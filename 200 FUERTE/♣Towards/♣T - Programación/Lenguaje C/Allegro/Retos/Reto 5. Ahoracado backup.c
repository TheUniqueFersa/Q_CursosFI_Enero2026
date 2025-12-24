#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <time.h>
#include <string.h>

void regresar()
{
  printf("\nPresiona una tecla para regresar al menú: ");
  getchar();       
  getchar();
}

void ahorcado()
{
  char letra, copia[15], letra_mayus, dibujo_txt[100], lectura_txt[15];
  int i, vidas=3, perder=0, fila, col, longitud, ganaste=0, error, existe=0, aleatoria; 
  FILE *arch;

  srand(time(NULL)); 
  aleatoria=rand()%((9)+1);    

  arch = fopen("Ahorcado y palabras.txt", "r");
  for(i=0; i <= aleatoria; i++)
    fscanf(arch, "%15s", lectura_txt);
  fclose(arch);// <3 
  strcpy(copia, lectura_txt);
  printf("⫷ A H O R C A D O ⫸\n\n");
  for(col=0; col<=strlen(lectura_txt)-1; col++)
  {
    copia[col]='_'; 
    printf("%c ", copia[col]);
  }
  printf("%i vidas", vidas);
  vidas=3;
  arch = fopen("Ahorcado y palabras.txt", "r");    
  fgets(dibujo_txt, 100, arch);
  printf("\n");
  for(i=0; i<8; i++)
  {
    fgets(dibujo_txt, 100, arch);
    printf("%s", dibujo_txt);
  }
  fclose(arch);
  while(strcmp(copia, lectura_txt) != 0 && vidas>0)
  {
    existe=0;      
    arch = fopen("Ahorcado y palabras.txt", "r");    
    
    printf("\n\nDame una letra: " );   
    scanf("\n%c",&letra);        
    for(col=0; col<=strlen(lectura_txt); col++)
    {
      if(islower(letra))
        letra_mayus = toupper(letra);
      if(lectura_txt[col]==letra || lectura_txt[col]==letra_mayus)
      {
        copia[col]=lectura_txt[col]; 
        existe++; 
      }
    }
    if(existe==0)
      vidas--;    
    if(vidas!=0)
    { 
      for(col=0; col<=strlen(lectura_txt)-1; col++)
        printf("%c ", copia[col]);
      printf(" %i vida", vidas); 
      if(vidas>1)
        printf("s"); 
    }    
    fgets(dibujo_txt, 100, arch);
    printf("\n");
    switch (vidas)
    {
      case 3:
        for(i=0; i<8; i++)
        {
          fgets(dibujo_txt, 100, arch);
          printf("%s", dibujo_txt);
        }
        break;
      case 2:
        for(i=0; i<9; i++)
          fgets(dibujo_txt, 100, arch);
        for(i=0; i<8; i++)
        {
          fgets(dibujo_txt, 100, arch);
          printf("%s", dibujo_txt);
        }
        break;
      case 1:
        for(i=0; i<18; i++)
          fgets(dibujo_txt, 100, arch);
        for(i=0; i<8; i++)
        {
          fgets(dibujo_txt, 100, arch);
          printf("%s", dibujo_txt);
        }
        break;
      default:
        for(i=0; i<27; i++)
          fgets(dibujo_txt, 100, arch);
        for(i=0; i<8; i++)
        {
          fgets(dibujo_txt, 100, arch);
          printf("%s", dibujo_txt);
        }
    }    
    fclose(arch); 
  }  
  if(strcmp(copia, lectura_txt) == 0)
  {
    if(vidas>1)
      printf("\n\n❂ ❂ ❂ Ganaste ❂ ❂ ❂\nLa palabra era %s.\nTe quedaron %i vidas.\n", copia, vidas);
    else
      printf("\n\n❂ ❂ ❂ Ganaste ❂ ❂ ❂\nLa palabra era %s.\nTe quedó %i vida.\n", copia, vidas);
  }
  else
    printf("\n\n ❂ ❂ Perdiste :( ❂ ❂\nYa no tienes más vidas.\nLa palabra era %s.", lectura_txt);
}

int verificador_ganador(int tablero[][3])
{
  int verificador = 0, i, y=0;
  for(i=0; i<3; i++)  
    if(tablero[i][y] + tablero[i][y+1] + tablero[i][y+2] == 3 || tablero[i][y] + tablero[i][y+1] + tablero[i][y+2] == -3)
      verificador = 1;
  i=0;  
  for(y=0; y<3; y++)  
    if(tablero[i][y] + tablero[i+1][y] + tablero[i+2][y] == 3 || tablero[i][y] + tablero[i+1][y] + tablero[i+2][y] == -3)
      verificador = 1;  
  if((tablero [0][0] + tablero [1][1] + tablero [2][2] == 3 || tablero [0][0] + tablero [1][1] + tablero [2][2] == -3) || (tablero [2][0] + tablero [1][1] + tablero [0][2] == 3 || tablero [2][0] + tablero [1][1] + tablero [0][2] == -3))
    verificador = 1;
  return verificador;
}

void gato()
{
  char tablero[3][3], simbolo_jugador, num;
  int opcion_jugador = 0, jugador = 0, jugadas_maximas = 0, filas, columnas, i, y, tablero_magico[3][3];  
    
  printf("\nHas elegido:\n⫷ G A T O ⫸\n\n");
  for(i=0;i<3;i++)  
    for(y=0;y<3;y++)
      tablero_magico[i][y] = 0;
  num = '1';
  for(filas = 0; filas < 3; filas++)
    for(columnas = 0; columnas < 3; columnas++)
      tablero[filas][columnas] = num++;  
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
    for(filas=0;filas<3;filas++)      
    {
      columnas=0;
      printf("  %c | %c | %c\n", tablero[filas][columnas], tablero[filas][columnas+1], tablero[filas][columnas+2]); 
    } 
    do
    {      
      printf("Movimiento del jugador %i: ", jugador);
      scanf("%i", &opcion_jugador);
      if(opcion_jugador < 1 || opcion_jugador >9)
        printf("\n\nOpción inválida\n");         
      filas=0;
      if(opcion_jugador < 7 && opcion_jugador > 3)
        filas=1;
      if(opcion_jugador < 10 && opcion_jugador > 6)
        filas=2;
      columnas=0;      
      if(opcion_jugador  == 2 || opcion_jugador  == 5 || opcion_jugador == 8)      
        columnas=1;      
      if(opcion_jugador%3 == 0)      
        columnas=2;            
      if((tablero[filas][columnas] == 'O' || tablero[filas][columnas] == 'X') && !(opcion_jugador < 1 || opcion_jugador >9))
        printf("\n- ¡Celda ocupada! -\nElige otra. ");      
    }
    while((opcion_jugador < 1 || opcion_jugador >9) || tablero[filas][columnas] == 'O' || tablero[filas][columnas] == 'X');    
    tablero[filas][columnas] = simbolo_jugador;      
    if(jugador == 1)
      tablero_magico[filas][columnas] = 1;
    if(jugador == 2)
      tablero_magico[filas][columnas] = (-1);   
    jugadas_maximas++;    
  }
  while(verificador_ganador(tablero_magico) != 1 && jugadas_maximas != 9);    
  for(filas=0;filas<3;filas++)      
  {
    columnas=0;
    printf("  %c | %c | %c\n", tablero[filas][columnas], tablero[filas][columnas+1], tablero[filas][columnas+2]); 
  } 
  if(jugadas_maximas == 9 && verificador_ganador(tablero_magico)!=1)
    printf("\n\n--- Nadie ha ganado, reinicia el juego e intentenlo de nuevo :D ---\n");
  if(verificador_ganador(tablero_magico)==1)
    printf("\n\n.... ¡El jugador %i ha ganado la partida! ....\n\n", jugador);
}

int main() 
{
  int opcion=0, i;
  while(opcion != 3)
  {
    printf("\n\t///Menú\\\\\\");
    printf("\n1.Ahorcado");
    printf("\n2.Gato");
    printf("\n3.Salir");
    printf("\nElige una opción: ");
    scanf("%i", &opcion); 

    switch(opcion)
    {
      case 1:
        ahorcado();
        regresar();
        break; 
      case 2: 
        gato();
        regresar();            
        break;
      default:
        if(opcion==3)
          printf("\nGracias por utilizar nuestro programa :) [The Clovers++ team]");
        if(opcion!=3)
          printf("\nOpción Inválida\nIntroduce una opción válida\n");  
    }
  }
  return 0;
}