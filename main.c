#include "uart.h"

uart_storage_t uartStorage;

int main()
{

    uart_config_t config = {0};

    uart_getDefaultConfig(&config);
    uart_init(uart_id_0, &config, &uartStorage);

    uart_println(uart_id_0, "Hello World!");

    while(1)
    {
        
    }
}