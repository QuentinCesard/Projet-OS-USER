CC = gcc
CFLAGS = `sdl2-config --cflags`
LIBS = `sdl2-config --libs` -lSDL2_image -lSDL2_ttf

SERVER_SRC = server.c
SERVER_BIN = serveur

CLIENT_SRC = sh13.c
CLIENT_BIN = client

.PHONY: all clean run_server run_clients

all: $(SERVER_BIN) $(CLIENT_BIN)

$(SERVER_BIN): $(SERVER_SRC)
	$(CC) $(SERVER_SRC) -o $(SERVER_BIN) $(CFLAGS) $(LIBS)

$(CLIENT_BIN): $(CLIENT_SRC)
	$(CC) $(CLIENT_SRC) -o $(CLIENT_BIN) $(CFLAGS) $(LIBS)


leserveur:
	./$(SERVER_BIN) 6000
client1:
	./$(CLIENT_BIN) 127.0.0.1 6000 127.0.0.1 3000 Joueur1
client2:
	./$(CLIENT_BIN) 127.0.0.1 6000 127.0.0.1 3001 Joueur2
client3:
	./$(CLIENT_BIN) 127.0.0.1 6000 127.0.0.1 3002 Joueur3
client4:
	./$(CLIENT_BIN) 127.0.0.1 6000 127.0.0.1 3003 Joueur4

clean:
	rm -f $(SERVER_BIN) $(CLIENT_BIN)
