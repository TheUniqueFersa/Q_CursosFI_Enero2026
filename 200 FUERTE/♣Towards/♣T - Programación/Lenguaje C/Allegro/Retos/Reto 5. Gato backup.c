#include <stdio.h>

void valores_iniciales(char matriz[3][3])
{
  int filas, col;
  char num;

  num = '1';

  for(filas = 0; filas < 3; filas++)
  {
    for(col = 0; col < 3; col++)
      matriz[filas][col] = num++;
  }
}//Asignacion de valores de la matriz 123, 456, 789. Son iniciales
/*void winner(char matriz[3][3])

/*void tablero(char matriz[3][3])
{
  int filas, col;
  printf("\n");
	for(filas = 0; filas < 3; filas++)
  {
    for(col = 0; col<3; col++)
      printf("  %c", matriz[filas][col]);
    printf("\n");
  } 
  printf("\n");
}//Esta funcion imprime el tablero*/

void gato()
{

  char matriz[3][3], signo_jugador;
  int turno=1, ganador=0, posicion_jugador, numero_jugador, error_casilla;

  posicion_jugador=0;

  valores_iniciales(matriz);
  //tablero(matriz);
  

  signo_jugador='X';

  do
  {
    if(signo_jugador == 'X')
      numero_jugador = 1;
    if(signo_jugador == 'O')
      numero_jugador = 2;

    do
    {
      printf("¿Movimiento del jugador %i?", numero_jugador);
      scanf("%i", &posicion_jugador);

      switch(posicion_jugador)
      {
        case 1:
        {
          if(matriz[0][0]=='1')
          {
            matriz[0][0]=signo_jugador;
            error_casilla=0;
          }
          else
          {
            printf("Celda ocupada, elija otra.");
            error_casilla++;
          }
        break;
        }
        case 2:
        {
          if(matriz[0][1]=='2')
          {
            matriz[0][1]=signo_jugador;
            error_casilla=0;
          }
          else
          {
            printf("Celda ocupada, elija otra.");
            error_casilla++;
          }
        break;
        }
        case 3:
        {
          if(matriz[0][2]=='3')
          {
            matriz[0][2]=signo_jugador;
            error_casilla=0;
          }
          else
          {
            printf("Celda ocupada, elija otra.");
            error_casilla++;
          }
        break;
        }
        case 4:
        {
          if(matriz[1][0]=='4')
          {
            matriz[1][0]=signo_jugador;
            error_casilla=0;
          }
          else
          {
            printf("Celda ocupada, elija otra.");
            error_casilla++;
          }
        break;
        }
        case 5:
        {
          if(matriz[1][1]=='5')
          {
            matriz[1][1]=signo_jugador;
            error_casilla=0;
          }
          else
          {
            printf("Celda ocupada, elija otra.");
            error_casilla++;
          }
        break;
        }
        case 6:
        {
          if(matriz[1][2]=='6')
          {
            matriz[1][2]=signo_jugador;
            error_casilla=0;
          }
          else
          {
            printf("Celda ocupada, elija otra.");
            error_casilla++;
          }
        break;
        }
        case 7:
        {
          if(matriz[2][0]=='7')
          {
            matriz[2][0]=signo_jugador;
            error_casilla=0;
          }
          else
          {
            printf("Celda ocupada, elija otra.");
            error_casilla++;
          }
        break;
        }
        case 8:
        {
          if(matriz[2][1]=='8')
          {
            matriz[2][1]=signo_jugador;
            error_casilla=0;
          }
          else
          {
            printf("Celda ocupada, elija otra.");
            error_casilla++;
          }
        break;
        }
        case 9:
        {
          if(matriz[2][2]=='9')
          {
            matriz[2][2]=signo_jugador;
            error_casilla=0;
          }
          else
          {
            printf("Celda ocupada, elija otra.");
            error_casilla++;
          }
        break;
        }
        default:
        {
          printf("Numero invalido");
          error_casilla++;
        }
      }
    }
    while(error_casilla!=0);

    /*if(error_casilla==0)
      tablero(matriz);*/
    if(numero_jugador==2)
      signo_jugador='X';
    if(numero_jugador==1)
      signo_jugador='O';

  }
  while(matriz[0][0]=='1' || matriz[0][1]=='2' || matriz[0][2]=='3' || matriz[1][0]=='4' || matriz[1][1]=='5' || matriz[1][2] =='6' || matriz[2][0]=='7' || matriz[2][1]=='8' || matriz[2][2]=='9'); //aquí hay que modificar el while cuando ya este la funcion de ganador
}


int main(){ //JUGADOR 1= X JUGADOR 2= O
  gato();

  return 0;

}