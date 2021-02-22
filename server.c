#include "server.h"

void start(void)
{
    printf("Server ....\n");
    socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
}