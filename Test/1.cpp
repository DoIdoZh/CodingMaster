#include <iostream>

int main() {
    int qq[] = {
        0b00110001,0b00110000,0b00110101,0b00110100,0b00110111,0b00110010,0b00111000,0b00110001,0b00110101,0b00110010
    };

    for (char i : qq) {
        std::cout << i << "";
    }

    return 0;
}