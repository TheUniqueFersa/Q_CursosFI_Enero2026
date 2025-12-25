#include <stdio.h>

int main()
{
    int num1, num2, edad = 0, resultado;
    char letra = 164, inicial;
    
    
    printf("\nFersa // López Morales Fernando Samuel\n\n¡Bienvenido usuario!");
    printf("\n\nContenido de la variable \"letra\": %c", letra);
    printf("    WARNING!: La \"ñ\" no se puede desplegar");

    printf("\n\nIngresa tu edad: ");
    scanf("%i", &edad);
    printf("Tu edad es: \"%i\" :D", edad);    

//Primera solucion a lo del boofer
    printf("\n\n1.- Ingresa un caracter :) :");
    scanf("%c", &letra);
    scanf("%c", &letra);
    printf("\n\nEl caracter que ingresaste fue \"%c\"", letra);


//Segunda solucion a lo del boofer:
    printf("\n\n2.- Ingresa un caracter :) :");
    scanf("\n%c", &letra);
    printf("\n\nEl caracter que ingresaste fue \"%c\"", letra);

//Inicial
    printf("\nIngresa tu inicial: ");
    getchar();
    inicial = getchar();
    printf("\nTu inicial es: \"%c\"", inicial);

//Ingresar 2 numeros
    printf("\n\nDame el 1°numero: ");
    scanf("\n%i", &num1);

    printf("Dame el 2°numero: ");
    scanf("%i", &num2);

    printf("\nTus 2 numeros que ingresaste son: \nnum1: \"%i\"\nnum2: \"%i\"", num1, num2);
    printf("\n\n\"OPERACIONES\"\n");
    printf("\nLa suma es: %i", num1+num2);
    printf("\nLa resta es: %i", num1-num2);
    printf("\nLa multiplicación es: %i", num1*num2);
    printf("\nLa división es: %i", num1/num2);
    printf("\nEl módulo entre ambos numeros es: %i", num1%num2);

    resultado = num1%2;
    printf("\n\n\n%i",resultado);

//FINNNN
    printf("\n\n\nFin OMG");

    return 0;
}
