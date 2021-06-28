
#include <stdio.h>

int main(int argc, char** argv) {

    char* obj = "World";

    if (argc > 1) {
        obj = argv[1];
    }

    printf("Hello, %s!\n", obj);

    return 0;
}
