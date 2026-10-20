#include <stdio.h>
#include <stdint.h>

void set_bit(uint32_t *reg, int n)
{
    *reg |= (1u << n);
}

void clear_bit(uint32_t *reg, int n)
{
    *reg &= ~(1u << n);
}

void toggle_bit(uint32_t *reg, int n)
{
    *reg ^= (1u << n);
}

int check_bit(uint32_t reg, int n)
{
    return (reg >> n) & 1u;
}

int count_set_bits(uint32_t x)
{
    int count = 0;

    while (x != 0)
    {
        count += x & 1u;
        x >>= 1;
    }

    return count;
}

int is_power_of_two(uint32_t x)
{
    return (x != 0) && ((x & (x - 1)) == 0);
}

int main(void)
{
    uint32_t reg = 0;

    set_bit(&reg, 0);
    set_bit(&reg, 3);
    set_bit(&reg, 7);

    printf("After setting bits: 0x%08X\n", (unsigned int)reg);

    clear_bit(&reg, 3);
    toggle_bit(&reg, 7);

    printf("After clearing bit 3 and toggling bit 7: 0x%08X\n",
           (unsigned int)reg);

    printf("Bit 0 = %d\n", check_bit(reg, 0));
    printf("Bit 3 = %d\n", check_bit(reg, 3));
    printf("Bit 7 = %d\n", check_bit(reg, 7));

    printf("Set bits count = %d\n", count_set_bits(reg));

    printf("Is 8 a power of two? %s\n",
           is_power_of_two(8) ? "Yes" : "No");

    printf("Is 10 a power of two? %s\n",
           is_power_of_two(10) ? "Yes" : "No");

    printf("Is 0 a power of two? %s\n",
           is_power_of_two(0) ? "Yes" : "No");

    return 0;
}
