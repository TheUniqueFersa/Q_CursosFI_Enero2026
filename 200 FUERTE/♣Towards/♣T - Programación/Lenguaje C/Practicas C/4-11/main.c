#include <stdio.h>

int main()
{
    int num1, num2, edad = 0;
    char letra = 164;
    
    
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

//FINNNN
    printf("\n\n\nFin OMG");

    return 0;
}
