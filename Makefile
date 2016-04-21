BINS=robotClient robotServer Compression

all: $(BINS)

robotClient: RobotClient.c
	g++ -g -Wall RobotClient.c -o robotClient -lm

robotServer: RobotServer.c
	g++ -g -Wall RobotServer.c -o robotServer -lm
	
Compression: Compression.cpp
	g++ -g -Wall Compression.cpp -o Compression -lm

clean:
	rm $(BINS)
