
#include <stdio.h>

int main(int argc, char** argv) {

    char* obj = "";

    if (argc > 1) {
        obj = argv[1];
    }

    printf("Hello, World! %s!\n", obj);

    return 0;
}
