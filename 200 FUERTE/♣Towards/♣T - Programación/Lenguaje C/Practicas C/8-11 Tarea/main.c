#include <stdio.h>

int main()
{
    float tempcelsius = 0, resul = 0;

    scanf("%f", &tempcelsius);
    resul = tempcelsius*1.8+32;
    printf("%.1f °F", resul);

    return 0;
}