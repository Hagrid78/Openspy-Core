# Openspy-Core

## Building on Ubuntu 18.04 LTS

Install dependencies:

    apt update
    apt upgrade
    apt install git cmake build-essential libgeoip-dev libmysqlclient-dev liblua5.1-0-dev libmysqld-dev libboost1.65-dev

Clone the repo:

    mkdir /opt
    cd /opt
    git clone https://github.com/ibel001/Openspy-Core
    cd Openspy-Core

Build:

    cmake -DCMAKE_BUILD_TYPE=Debug -G "CodeBlocks - Unix Makefiles" .
    cmake --build . --target all -- -j 1

Copy binaries:

    mkdir /opt/openspy
    cp ./openspy/openspy /opt/openspy/openspy
    cp -r ./openspy/modules /opt/openspy/modules
    cp ./udf/Matrix/udf_matrixqueue.so /opt/openspy/udf_matrixqueue.so

Copy configuration and sql files:

    cp ./openspy/openspy.cfg /opt/openspy/openspy.cfg
    cp -r ./webroot /opt/openspy/webroot
    cp ./Database.sql /opt/openspy/Database.sql
    cp ./udf/Matrix/procs.sql /opt/openspy/procs.sql
    cp ./import_game_data_to_db /opt/openspy/import_game_data_to_db

### Configure openspy

Install dependencies:

    apt install lua5.1 mysql-server geoip-bin

Create new user:

    useradd -M openspy
    chown -R openspy:openspy /opt/openspy/*

Copy MySQL plugin:

    cp /opt/openspy/udf_matrixqueue.so /usr/lib/mysql/plugin/udf_matrixqueue.so
    chown root:root /usr/lib/mysql/plugin/udf_matrixqueue.so
    chmod 644 /usr/lib/mysql/plugin/udf_matrixqueue.so

Restart MySQL:

    systemctl restart mysql

### Create MySQL database

> On fresh install it is recommended to run [mysql_secure_installation](http://manpages.ubuntu.com/manpages/bionic/man1/mysql_secure_installation.1.html "manpages.ubuntu.com") script

Replace **password_here** with your password.

Login to MySQL monitor as root user:

    mysql -u root -p

Create new user openspy:

    mysql> CREATE USER 'openspy'@'localhost' IDENTIFIED BY 'password_here';

Create database:

    mysql> source /opt/openspy/Database.sql;

Import procedures:

    mysql> source /opt/openspy/procs.sql;

Close monitor:

    mysql> exit

Import game data:

    chmod 755 ./import_game_data_to_db
    ./import_game_data_to_db ./papers/gamedata_all.txt openspy password_here

Edit openspy config:

    nano /opt/openspy/openspy.cfg

Replace **password_here** with your password

Replace 192.168.1.7 with your public server IP and save

### Configure nginx

    apt install nginx

Create openspy webroot config:

    nano /etc/nginx/sites-available/openspy-webroot

openspy-webroot:

    server {
            listen 80 default_server;
            root /opt/openspy/webroot;
            index index.html index.htm;
            server_name localhost;

            location ~ ^/servserv/.*MOTD.*\.txt$ {
                    types {}
                    default_type text/plain;
                    try_files $uri $uri/ @motd_rules;
            }

            location @motd_rules {
                    rewrite ^ /servserv/MOTD.txt;
            }

            location ~ ^/servserv/.*config\.txt$ {
                    types {}
                    default_type text/plain;
                    try_files $uri $uri/ @config_rules;
            }

            location @config_rules {
                    rewrite ^ /servserv/config.txt;
            }

            location ~ ^/servserv/.*\.patchinfo$ {
                    types {}
                    default_type text/plain;
                    return 200;
            }

            location ~ ^/servserv/.*\.html$ {
                    types {}
                    default_type text/html;
                    return 200;
            }

            location ~ ^/servserv/.*\.dll$ {
                    types {}
                    default_type text/plain;
                    return 200;
            }

            location ~ ^/.*/.*$ {
                    try_files $uri $uri/ @txt;
            }

            location @txt {
                    types {}
                    default_type text/plain;
                    return 200 '';
            }
    }

Enable openspy webroot config:

    ln -s /etc/nginx/sites-available/openspy-webroot /etc/nginx/sites-enabled/openspy-webroot

Disable default nginx config:

    rm /etc/nginx/sites-enabled/default

Restart nginx:

    systemctl restart nginx

### Configure firewall

Network ports used by openspy:

    tcp 6667 # GameSpy Matrix Clone (peerchat)
    udp 27900 # GameSpy Query and Reporting Server (heartbeat)
    udp 27901 # GameSpy NAT Negotiation
    tcp 28900 # GameSpy Legacy Master Server
    tcp 28910 # GameSpy Server Browsing server
    tcp 29900 # GameSpy Presence Server Clone
    tcp 29901 # GameSpy Search Manager (player searching, gpsp.gamespy.com)
    udp 29910 # GameSpy Master Server
    tcp 29920 # GameSpy Master Server

Install UFW:

    apt install ufw

Add rules:

    ufw allow ssh
    ufw allow 80/tcp
    ufw allow 6667/tcp
    ufw allow 27900/udp
    ufw allow 27901/udp
    ufw allow 28900/tcp
    ufw allow 28910/tcp
    ufw allow 29900/tcp
    ufw allow 29901/tcp
    ufw allow 29910/udp
    ufw allow 29920/tcp
    ufw enable

### Create systemd service

    nano /etc/systemd/system/openspy.service

openspy.service:

    [Unit]
    Description=Openspy Server
    After=syslog.target local-fs.target network.target mysql.service

    [Service]
    WorkingDirectory=/opt/openspy
    User=openspy
    Group=openspy
    ExecStart=/opt/openspy/openspy

    [Install]
    WantedBy=multi-user.target

Enable service:

    systemctl enable openspy

Start openspy:

    systemctl start openspy

### Client side configuration

Use Windows hosts file to redirect game queries to your openspy server.

Example for C&C Generals Zero Hour:
Replace 192.168.1.7 with your public server IP

    192.168.1.7 gamestats.gamespy.com
    192.168.1.7 master.gamespy.com
    192.168.1.7 peerchat.gamespy.com
    192.168.1.7 gpcm.gamespy.com
    192.168.1.7 ccgenerals.ms19.gamespy.com
    192.168.1.7 ccgenzh.ms6.gamespy.com
    192.168.1.7 servserv.generals.ea.com
    192.168.1.7 www.gamespy.com
    192.168.1.7 ingamead.gamespy.com
    192.168.1.7 launch.gamespyarcade.com

GameSpy domains for your game may be found on client machine with [Wireshark](https://www.wireshark.org "wireshark.org"), use `dns || http` filter.

