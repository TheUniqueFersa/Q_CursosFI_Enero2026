#include <stdio.h>

int main(void) {
  int Opcion, fila, columna, num_term, num_veces,/**/ num_fact, n=0,/*//=num que incrementa de 1 a (num_fact) || num imp en el diamante*/diagonal, ast_o_esp, altura, mitad_alta, mitad_baja;
  //long int num_act=0, num_ant = 1, factorial = 1;  
  double num_act=0, num_ant = 1, factorial = 1;  
  char celda='#', relleno = 'F', pregunta_par;
  printf("Bienvenido Usuario\n\n    Menú: ");
  printf("\n1. Dibujar diamante");
  printf("\n2. Dibujar tablero ajedrez");
  printf("\n3. Secuencia de Fibonacci");
  printf("\n4. Factorial de un número");
  printf("\n5. Salir");
  printf("\n\nIngresa alguna de las opciones anteriores: ");
  scanf("%i", &Opcion);
  switch(Opcion)
  {
    case 1:
      printf("\n\nHas elegido: \"1. Dibujar diamante\"");
      printf("\nIngrese la longitud de la diagonal: ");
      scanf("%i", &diagonal);  
      if(diagonal>0)
      {
        if(diagonal%2 ==0)
        {
          printf("El diamante tiene que ser un valor impar para imprimirse correctamente.\n¿Quieres continuar aunque el valor que ingresaste es par? (S/N): ");
          scanf("\n%c", &pregunta_par);
          if(pregunta_par=='N' || pregunta_par=='n')
            printf("\nReinicia el programa y vuelve a ingresar un numero impar :D");
          if(pregunta_par!='S' && pregunta_par!='s')
            printf("\nRespuesta inválida");      
        }            
        if(pregunta_par=='S' || pregunta_par=='s' || diagonal%2 !=0)
        {      
          printf("¿Con relleno? (S/N): ");
          scanf("\n%c", &relleno);
          if(relleno=='S' || relleno=='s')
            relleno='*';
          if(relleno=='N' || relleno=='n')
            relleno=' ';
          if(!(relleno=='*' || relleno ==' '))
            printf("Respuesta inválida");
          mitad_alta = diagonal/2;
          printf("%i\n", mitad_alta);
          for(altura=1; altura<=diagonal; altura++)
          {        
            if(mitad_alta>0)
              n=mitad_alta;
            else
              n=mitad_baja;
            for(num_veces=0; num_veces<n; num_veces++)
              printf(" ");
            ast_o_esp= (diagonal-(n*2))-2;            
            if((num_veces==n && (altura!=1 && altura != diagonal)))
              printf("*");            
            for(num_veces=0; num_veces<ast_o_esp; num_veces++)                          
              printf("%c", relleno);                      
            printf("*\n");            
            if(mitad_alta>0)
              mitad_alta--;
            else
              mitad_baja++;        
          }
        }          
      }
      else
        printf("\nValor inválido");
      break;
    case 2:
      printf("\n\nHas elegido: \"2. Dibujar tablero ajedrez\"\n\n");
      for(fila=8; fila>0; fila--)
      {        
        printf("|");//se puede quitar
        for(columna=8; columna>0; columna--)
        {
          printf("%c", celda);
          if(celda == '#' && columna != 1)
            celda = ' ';
          else
          {
            if(celda==' ' && columna != 1)
              celda = '#';
          }            
          if(columna==1)
            printf("|\n");
        }        
      }
      break;
    case 3:
      printf("\n\nHas elegido: \"3. Secuencia de Fibonacci\"\n\n");
      printf("Ingresa el número de términos que quieres que se impriman: ");
      scanf("%i", &num_term);      
      if(num_term>0)  
      {
        for(num_veces=0; num_veces<num_term; num_veces++)
        {  
          num_act = num_ant + num_act;
          num_ant = num_act - num_ant;
          printf("%.0f", num_act);
          if(num_veces != num_term-1)
            printf(", ");
          else
            printf(".");          
        }        
      }
      else
      {
        if(num_term == 0)
          printf("No hay valores por mostrar.");
        if(num_term<0)
          printf("Número Inválido.");
      }      
      break;
    case 4:
      printf("\n\nHas elegido: \"4. Factorial de un número\"\n");
      printf("\nIntroduzca un número entero: ");
      scanf("%i", &num_fact);
      if(num_fact>-1)
      {
        for(num_veces=1; num_veces<=num_fact; num_veces++)
        {
          factorial *= (n+1);
          n+=1;
        }
        printf("El factorial de %i es: %.0f", num_fact, factorial);
      }
      else
        printf("Número inválido");
      break;
    case 5:    
      printf("Has elegido: \"5. Salir\"");
      break;
    default:
      printf("Opción Inválida");
  }
  return 0;
}