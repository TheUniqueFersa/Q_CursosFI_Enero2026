#include <stdio.h>

int main()
{
    int num = 0;
    char op;
    printf("Ingresa un número: ");
    scanf("%i", &num);

    printf("El número que ingresaste es: \"%i\"", num);

    if(num > 10)
        printf("\nCalificación inválida\n");
    else{
        if(num < 0)
            printf("\nCalificación inválida\n");
        else
        printf("\nCalificación válida");
    }
    if(num >= 5 && num <= 10)
        printf("\n\nCalificación válida\n");

    switch(num)
    {
        case 10:
            printf("\nExcelente");
            break;
        case 9:
            printf("\n¡Muy bien!");
            break;
        case 8:
            printf("\nBien");
            break;
        case 7:
            printf("\nPuede mejorar");
            break;
        case 6:
            printf("\nPanzazo");
            break;
        default:
            printf("\nReprobado");
    }

    printf("\n\nMenu");
    printf("\nA. Suma");
    printf("\nB. Resta");
    printf("\nC. Multiplicación");
    printf("\nD. División");
    printf("\nSelecciona una opción: ");

    scanf("\n%c", &op);
    switch(op)
    {
        case 'A':
            num += 5;
            printf("Suma = %i", num);
            break;
        case 'B':
            num -= 5;
            printf("Resta = %i", num);
            break;
        case 'C':
            num *= 5;
            printf("Multiplicación = %i", num);
            break;
        case 'D':
            printf("División = %.2f", num/5.0);
            break;
        default:
            printf("\nOpcion invalida");
    }

    return 0;
}
