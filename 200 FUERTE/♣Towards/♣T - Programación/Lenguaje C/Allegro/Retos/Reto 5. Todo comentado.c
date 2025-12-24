/*#include <stdio.h>
int verificador_ganador(int tablero[][3])
{
  int verificador = 0, i, y;
  for(i=0; i<3; i++)  
    if(tablero[i][y] + tablero[i][y+1] + tablero[i][y+2] == 3 || tablero[i][y] + tablero[i][y+1] + tablero[i][y+2] == -3)
      verificador = 1;  
  for(y=0; y<3; y++)  
    if(tablero[i][y] + tablero[i+1][y] + tablero[i+2][y] == 3 || tablero[i][y] + tablero[i+1][y] + tablero[i+2][y] == -3)
      verificador = 1;  
  if((tablero [0][0] + tablero [1][1] + tablero [2][2] == 3 || tablero [0][0] + tablero [1][1] + tablero [2][2] == -3) || (tablero [2][0] + tablero [1][1] + tablero [0][2] == 3 || tablero [2][0] + tablero [1][1] + tablero [0][2] == -3))
    verificador = 1;
  return verificador;
//[0][0], [0][0] []
  /*if(matriz[0][0] == 'x' && matriz[0][0] == matriz[0][1] && matriz[0][0] == matriz[0][2]
  || matriz[1][0] == 'x' && matriz[1][0] == matriz[1][1] && matriz[1][0] == matriz[1][2]
  || matriz[2][0] == 'x' && matriz[2][0] == matriz[2][1] && matriz[2][0] == matriz[2][2]
  
  || matriz[0][0] == 'x' && matriz[0][0] == matriz[1][0] && matriz[0][0] == matriz[2][0]
  || matriz[0][1] == 'x' && matriz[0][1] == matriz[1][1] && matriz[0][1] == matriz[2][1]
  || matriz[0][2] == 'x' && matriz[0][2] == matriz[1][2] && matriz[0][2] == matriz[2][2]
  
  || matriz[0][0] == 'x' && matriz[0][0] == matriz[1][1] && matriz[0][0] == matriz[2][2]
  || matriz[0][2] == 'x' && matriz[0][2] == matriz[1][1] && matriz[0][2] == matriz[2][0])
  if(matriz[0][0] == 'o' && matriz[0][0] == matriz[0][1] && matriz[0][0] == matriz[0][2]
|| matriz[1][0] == 'o' && matriz[1][0] == matriz[1][1] && matriz[1][0] == matriz[1][2]
|| matriz[2][0] == 'o' && matriz[2][0] == matriz[2][1] && matriz[2][0] == matriz[2][2]

|| matriz[0][0] == 'o' && matriz[0][0] == matriz[1][0] && matriz[0][0] == matriz[2][0]
|| matriz[0][1] == 'o' && matriz[0][1] == matriz[1][1] && matriz[0][1] == matriz[2][1]
|| matriz[0][2] == 'o' && matriz[0][2] == matriz[1][2] && matriz[0][2] == matriz[2][2]

|| matriz[0][0] == 'o' && matriz[0][0] == matriz[1][1] && matriz[0][0] == matriz[2][2]
|| matriz[0][2] == 'o' && matriz[0][2] == matriz[1][1] && matriz[0][2] == matriz[2][0])


}

/*int casilla_libre(char *tablero)
{
  int libre_o_no;
  (!(*tablero < 58 || *tablero > 49))
  return libre_o_no;
}
void Gato()
{
  int jugador = 2, i, y, opcion_jugador, jugadas_maximas;
  char tablero[3][3], num, simbolo_jugador = 'X';
  int tablero_magico[3][3];
  
  //organizar le gato
  for(i=0;i<3;i++)  
    for(y=0;y<3;y++)
      tablero_magico[i][y] = 0;
  /*for(i=0;i<3;i++)  
    for(y=0;y<3;y++)
      printf("%i", tablero_magico[i][y]);
  
  num = '1';  

  for(i = 0; i < 3; i++)
    for(y = 0; y < 3; y++)
    {
      //printf("\nValor ASCII: %i, Caracter: %c\n", num, num);//Verificar el incremento
      tablero[i][y] = num++;
    }

  do
  {
    if(jugador == 1)
    {
      jugador = 2;
      simbolo_jugador = 'O';
    }
    else
    {
      jugador = 1;
      simbolo_jugador = 'X';
    }
    for(i=0;i<3;i++)      
    {
      y=0;
      printf("\n  %c | %c | %c\n", tablero[i][y], tablero[i][y+1], tablero[i][y+2]);   
    }//impresion del tablero

    do
    {     
      

      printf("Movimiento del jugador %i: ", jugador);
      scanf("%i", &opcion_jugador);
      if(opcion_jugador < 1 || opcion_jugador >9)
        printf("\n\nOpción inválida\n");         

      i=0;
      if(opcion_jugador < 7 && opcion_jugador > 3)
        i=1;
      if(opcion_jugador < 10 && opcion_jugador > 6)
        i=2;
      y=0;
      /*if(opcion_jugador + 3 == 4 || opcion_jugador + 3 == 7 || opcion_jugador + 3 ==10)
      {
        y=0;                                                                  
      }
      if(opcion_jugador + 3 == 5 || opcion_jugador + 3 == 8 || opcion_jugador + 3 ==11)      
        y=1;      
      if(opcion_jugador%3 == 0)      
        y=2;    
      //if(!(tablero[i][y] < 58 && tablero[i][y] > 49))
      if(tablero[i][y] == 'O' || tablero[i][y] == 'X')
        printf("\n- ¡Celda ocupada! -\nElige otra. ");

      /*if((opcion_jugador > 0 && opcion_jugador < 10) && (tablero[i][y] != 'O' && tablero[i][y] != 'X'))
      {      */
        
        /*i=0;
        if(opcion_jugador < 7 && opcion_jugador > 3)
          i=1;
        if(opcion_jugador < 10 && opcion_jugador > 6)
          i=2;
        if(opcion_jugador + 3 == 4 || opcion_jugador + 3 == 7 || opcion_jugador + 3 ==10)
        {
          y=0;*/
          /*if(tablero[i][y] != 'O' && tablero[i][y] != 'X')
          {*/
            //tablero[i][y] = simbolo_jugador;  
            //printf("\n%c\n\n", tablero[i][y]);    


/*
            if(jugador == 1)
              tablero_magico[i][y] = 1;
            else
              tablero_magico[i][y] = (-1);        


            */  


          /*}      
          else
          {
            printf("\nCelda ocupada\n\n");  
            if(jugador == 1)
              jugador = 2;
            if(jugador == 2)
              jugador = 1;
          }*/
        /*}
        if(opcion_jugador + 3 == 5 || opcion_jugador + 3 == 8 || opcion_jugador + 3 ==11)
        {
          y=1;
          if(tablero[i][y] != 'O' || tablero[i][y] != 'X')
          {
            tablero[i][y] = simbolo_jugador;          
            if(jugador == 1)
              tablero_magico[i][y] = 1;
            else
              tablero_magico[i][y] = (-1);
          }      
          else
          {
            printf("\nCelda ocupada\n\n");  
            if(jugador == 1)
              jugador = 2;
            if(jugador == 2)
              jugador = 1;
          } 
        }*//*
        if(opcion_jugador%3 == 0)
        {
          y=2;
          if(tablero[i][y] != 'O' || tablero[i][y] != 'X')
          {
            tablero[i][y] = simbolo_jugador;          
            if(jugador == 1)
              tablero_magico[i][y] = 1;
            else
              tablero_magico[i][y] = (-1);   
          }     
          else
          {
            printf("\nCelda ocupada\n\n");  
            if(jugador == 1)
              jugador = 2;
            if(jugador == 2)
              jugador = 1;
          } 
        } 
      
    }
    while((opcion_jugador < 1 || opcion_jugador >9) || (tablero[i][y] == 'O' || tablero[i][y] == 'X'));
    /*(!(tablero[i][y] < 58 && tablero[i][y] > 49)));
    tablero[i][y] = simbolo_jugador;  
    //printf("\n%c\n\n", tablero[i][y]);      
    if(jugador == 1)
      tablero_magico[i][y] = 1;
    else
      tablero_magico[i][y] = (-1);        
    jugadas_maximas++;
  }
  while(verificador_ganador(tablero_magico) != 1 && jugadas_maximas != 9);
  if(jugadas_maximas == 9)
    printf("\n\n--- Nadie ha ganado, reinicia el juego e intentenlo de nuevo :D ---\n");
  if(verificador_ganador(tablero_magico)==1)
    printf(".... ¡El jugador %i ha ganado la partida! ....", jugador);

}


int main(void) {
  
  Gato();

  return 0;
}*/