#include <stdio.h>

int main(void) {
  int opcion, calificaciones[10], i/*Numero de incremento*/, califapro = 0, califrep = 0, /*Caso 2:*/terminos, numconje, /*Caso 3:*/ altopunta, altronco, largomax, num_espacios, num_A, num_incre2, anchotronco;
  float promedio;
  char plural;  
  printf("¡Bienvenido Usuario!\n");
  do
  {    
    printf("\n\n\n  Menú:\n1. Calificaciones\n");
    printf("2. Conjetura de ULAM/Collatz\n");
    printf("3. Pinito navideño\n");
    printf("4. Salir\n");  
    printf("\nSelecciona una de las anteriores opciones: ");
    scanf("%i", &opcion);
    switch(opcion)
    {
      case 1:
        promedio = 0;
        califapro = 0;
        califrep = 0;
        printf("Has elegido: \"1. Calificaciones\"\n\n");        
        for(i=0; i<10; i++)
        {        
          do
          {            
            printf("Ingresa una calificación válida de la materia %i: ", i+1);
            scanf("%i", &calificaciones[i]);
            if(!(calificaciones[i]<11 && calificaciones[i]>=0))
              printf("¡Calificación Inválida!\n");
            else
            {
              if(calificaciones[i]>5 && calificaciones[i]<11)
                califapro++;
              if(calificaciones[i]>=0 && calificaciones[i]<6)
                califrep++;
            }
          }
          while(!(calificaciones[i]<11 && calificaciones[i]>=0));                    
        }      
        for(i=0; i<10; i++)    
          promedio += calificaciones[i];        
        promedio /= 10;                
        printf("\nEl promedio de las calificaciones es: %.1f", promedio);
        if(califrep>1 || califrep==0)
          plural = 's';
        else
          plural = '\0';
        printf("\nCon:  %i materia%c reprobada%c ", califrep, plural, plural); 
        if(califapro>1 || califapro==0)
          plural = 's';
        else
          plural = '\0';
        printf("y %i materia%c aprobada%c", califapro, plural, plural);
        printf("\n\nEste subprograma ha concluido\n");
        break;
      case 2:
        terminos = 1;
        printf("Has elegido: \"2. Conjetura de ULAM/Collatz\"\n");
        do
        {
          printf("Ingresa un número entero positivo: ");
          scanf("%i", &numconje);
          if(numconje <= 0)
            printf("Número inválido\n");
        }
        while(numconje <= 0);
        while(numconje != 1)
        {
          printf("%i, ", numconje);                      
          if(numconje%2 == 0)
            numconje /= 2;
          else
            numconje = (numconje*3)+1;
          terminos++;          
        }
        printf("%i.\n", numconje);
        if(terminos>1)
          plural = 's';
        else
          plural = '\0';
        printf("\nEsta sucesión tiene %i término%c", terminos, plural);
        printf("\n\nEste subprograma ha concluido\n");
        break;
      case 3:
        printf("Has elegido: \"3. Pinito navideño\"\n");              
        printf("\nIngresa el alto de la punta: ");
        scanf("%i", &altopunta);
        while((altopunta < 3 || altopunta > 10) || altopunta%2 == 0)
        {  
          printf("Valor inválido.\nVuelve a ingresar un número entre 3 y 10 inclusive y que sea impar: ");
          scanf("%i", &altopunta);
        }
        printf("\nIngresa el alto del tronco: ");
        scanf("%i", &altronco);
        while(altronco < 3 || altronco > 10)
        {  
          printf("Valor inválido.\nVuelve a ingresar un número entre 3 y 10 inclusive: ");
          scanf("%i", &altronco);
        }
        anchotronco = altopunta-2;
        largomax = (altopunta*2)-1;        
        for(i=1; i<=altopunta; i++)
        {          
          num_A = (i*2)-1; 
          num_espacios = (largomax - num_A)/2;
          for(num_incre2 = 0; num_incre2 < num_espacios; num_incre2++)
            printf(" ");          
          for(num_incre2 = 0; num_incre2 < num_A; num_incre2++)
            printf("A");    
          printf("\n") ;
        }
        num_espacios = (largomax - anchotronco)/2;
        for(i=1; i<=altronco; i++)
        {                            
          for(num_incre2 = 0; num_incre2 < num_espacios; num_incre2++)
            printf(" ");          
          for(num_incre2 = 0; num_incre2 < anchotronco; num_incre2++)
            printf("T");    
          printf("\n") ;
        }
        printf("\n\nEste subprograma ha concluido\n");
        break;
      case 4:
        printf("Has elegido: \"4. Salir\"\n");        
        break;
      default:
        printf("Opción inválida\n");
    }
    /*if(opcion != 4)    
    {
      for(i=0; i<50; i++)
        printf("\n");
    }*/
  }
  while(opcion != 4);
  printf("\n\nEl programa ha terminado exitosamente :), ¡vuelva pronto!");
  return 0;
}