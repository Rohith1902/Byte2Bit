
#include <stdio.h>
#include <stdint.h>

uint32_t get_field(uint32_t reg, int lsb, int width)
{
    return (reg >> lsb) & ((1u << width) - 1);
}

uint32_t set_field(uint32_t reg, int lsb, int width, uint32_t val)
{
    uint32_t mask = ((1u << width) - 1) << lsb;
    reg = reg & ~mask;
    reg = reg | (val << lsb);
    return reg;
}

int main(void)
{
    uint32_t reg = 0xABCD1234;

    uint32_t field = get_field(reg, 8, 8);
    printf("Extracted field: 0x%X\n", field);

    reg = set_field(reg, 4, 4, 0xF);
    printf("Updated register: 0x%08X\n", reg);

    return 0;
}
