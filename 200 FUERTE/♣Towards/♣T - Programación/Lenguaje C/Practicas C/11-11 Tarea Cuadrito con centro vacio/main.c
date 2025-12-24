#include <stdio.h>

int main()
{
    int i, y, e, x;

    for(i=2; i<=9; i++)
    {
        printf("%i", i);
        printf("-\n");
    }
    printf("\n\nDel 12 al 24 (De 2 en 2):\n");
    for(i=12; i<=24; i+=2)
    {
        printf("%i", i);
        printf("-\n");
    }
    printf("\n\nDel 10 al 0 (de 1 en 1):\n");
    for(i=10; i>=0; i--)
    {
        printf("%i", i);
        printf(".-\n");
    }
    //Con los asteriscos ya definidos a
    for(i=1; i<=4; i++)
        printf("********\n");

    printf("\n\n");
    //Con solo *
    for(y=1; y<=4; y++)
    {
        for(i=8; i>0; i--)
            printf("*");
        printf("\n");
    }
    
    printf("\n\nDame el largo del rectangulo: ");
    scanf("%i", &x);

    printf("Dame el alto del rectangulo: ");
    scanf("%i", &y);
    printf("\n\n");
    if(x>0 && y>0)
    {
        for(i=y; i>0; i--)
        {
            for(e=x; e>0; e--)
                printf("*");
            printf("\n");
        }
    }
    printf("\n\n");
//x, y
    if(x>0 && y>0)
    {
        for(i=y; i>0; i--)
        {
            if(i==1 || i==y)
            {
                for(e=x; e>0; e--)
                    printf("*");
                printf("\n");
            }
            else
            {
                printf("*");
                for(e=0; e<(x-2); e++)
                    printf(" ");
                printf("*");
                printf("\n");                     
            }
        }
    }
    return 0;
}
