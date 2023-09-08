/* Author: Brian Ponnampalam brian2004 [at] hotmail.com
   gcc -Wall -O2 -o genpass genpass.c
*/

#include <time.h>
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[])
{
    if (argc == 1) {
       printf("Example: %s 8 (generates 8 characters)\n", argv[0]);
       return 1;
    }
    /* Length of the password */
    unsigned short int length = atoi(argv[1]);

    /* Seed number for rand() */
    srand((unsigned int) time(0) + getpid());

    /* ASCII characters 33 to 126 */
    while(length--) {
        putchar(rand() % 94 + 33);
        srand(rand());
    }

    printf("\n");

    return EXIT_SUCCESS;
}
