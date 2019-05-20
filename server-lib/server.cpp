#include "server.h"
#include "server_execption.h"

server::server(char *address, uint16_t port) : d_socket(socket(AF_INET, SOCK_STREAM, 0)) {
    if (d_socket.isBroken()) {
        throw server_exception("Can't create socket ");
    }
    fillAddress(address, port);
    if (bind(
            d_socket.getDiscriptor(),
            reinterpret_cast<sockaddr *>(&saddress),
            sizeof(sockaddr))
        == -1) {
        throw server_exception("Can't bind socket");
    }

    if (listen(
            d_socket.getDiscriptor(),
            BACKLOG) == -1) {
        throw server_exception("Can't listen socket");
    }
}

[[noreturn]] void server::run() {
    while (true) {
        std::cout << "Trying to connect....." << std::endl;
        sockaddr_in peer{};
        socklen_t peer_size;
        socket_wrapper infd(accept(d_socket.getDiscriptor(),
                                   reinterpret_cast<sockaddr *>(&peer),
                                   &peer_size
        ));
        if (infd.isBroken()) {
            std::cerr << "Cannot accept peer";
            continue;
        }
        std::cout << inet_ntoa(peer.sin_addr) << " connected!" << std::endl;
        while (true) {
            std::vector<char> buffer(BUFFER_SIZE);
            ssize_t receivedStatus = recv(infd.getDiscriptor(), buffer.data(), BUFFER_SIZE, 0);
            if (receivedStatus == 0) {
                std::cout << "Client disconnected\n";
                break;
            } else if (receivedStatus == 1) {
                std::cerr << "Can't receive information";
                continue;
            } else {
                while (send(infd.getDiscriptor(), buffer.data(),
                            static_cast<size_t>(receivedStatus), 0) != receivedStatus) {
                    std::cerr << "Cannot send echo\n\"Tring to send again...\n";
                }
            }
        }
    }
}

void server::fillAddress(char *address, uint16_t port) {
    memset(&saddress, 0, sizeof(sockaddr_in));
    saddress.sin_family = AF_INET;
    saddress.sin_addr.s_addr = inet_addr(address);
    saddress.sin_port = port;
}
