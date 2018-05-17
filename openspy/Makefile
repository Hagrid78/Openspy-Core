start:
	g++ ../common/*.cpp ../common/*.c *.cpp -o openspy -I.. -ldl -fPIC -lpthread -lmysqlclient -Wwrite-strings
debug:
	g++ *.cpp ../common/*.cpp ../common/*.c -o openspy -I.. -ldl -Wstack-protector -fstack-protector-all -pthread -ggdb -lmysqlclient -fPIC -Wwrite-strings
