#include "uart.h"

#include <stdbool.h>

bool call_exit = true;

void phone_call_exit(int signo)
{
	call_exit = false;
}

int main(int argc, char **argv)
{
	int fd;
    int baud;
    char dev_name[128];
    char cc, buf[128];
    int rdcnt;

    if(argc != 3)
    {
        printf("sample_serial[device][baud]\n" \
                "device: /dev/ttyUSBx ...\n" \
                "baud: 2400 ... 115200\n");
        return -1;
    }

	printf("Serial Test Start... (%s)\n", __DATE__);

    strcpy(dev_name, argv[1]);
    baud = strtoul(argv[2], NULL, 10);

    fd = open_serial(dev_name, baud, 10, 32);

    if(fd < 0)
        return -2;

	signal(SIGINT, phone_call_exit);
	gsm_phone_call(fd, "01012341234");

	for(; call_exit; )
		;

	close_serial(fd);

	printf("Message Send Success\n");

	return 0;
}
