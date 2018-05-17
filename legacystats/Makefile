start:
	g++ *.cpp -lmysqlclient -Wno-write-strings -fPIC -shared -o ../openspy/modules/legacystats.so -I.. ../common/*.cpp ../common/*.c
debug:
	g++ *.cpp -lmysqlclient -Wno-write-strings -ggdb -Wstack-protector -fstack-protector-all -fPIC -shared -o ../openspy/modules/legacystats.so -I.. ../common/*.cpp ../common/*.c
