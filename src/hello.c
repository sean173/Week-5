#include "../lib/hello.h"

int main()
{
    char *hello = greeting();
    printer(hello);
    return 0;
}