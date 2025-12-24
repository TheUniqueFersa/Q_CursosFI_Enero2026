#include <stdio.h>

//Constantes
#define GRAVEDAD 9.78
#define PI 3.1416

int main()
{
    //Declaración de variables
    int edad=17, vidas=255, puntaje;  // variable con nombre edad y tipo entero
    float precio=25.50, temp_sensor=19.3;
    char letra='a';

    //Asignaciones
    /*edad = 17;
    vidas = 3;
    precio = 25.50;
    temp_sensor = 19.3;
    letra = 'a';*/

    printf("Código con \"variables\" y \'constantes\'");
    printf("\n\n\tVariable \bedad\r");
    printf("\vVariable vidas");

    printf("\nValor de la variable edad: %i", edad);
    printf("\nValor de vidas: %i", vidas);
    printf("\nEl valor de edad es %o y el de vidas es %X", edad, vidas);

    printf("\nEl precio de las tortillas es %.2f", precio);
    printf("\nLa temperatura segun el sensor es %.1f °C", temp_sensor);

    printf("\n%10.2f", 12345.678);
    printf("\n%10.2f", 89.76);

    printf("\nLa letra es %c", letra);
    printf("\n El valor ASCII de la letra %c es %i", letra, letra);
    printf("\nEl valor ASCII de la letra Z es %i", 'Z');
    printf("\n El valor ASCII de la letra %c es %i", 'Z', 'Z');
    letra = 'Z';
    printf("\n El valor ASCII de la letra %c es %i", letra, letra);

    printf("\nGravedad: %f", GRAVEDAD);
    printf("\nPi: %f", PI);

    return 0;
}
