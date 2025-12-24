#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <time.h>
#include <string.h>

void ahorcado()
{
  char /*aleatoria,*/ palabra/*[10]*/[15] /*= {{"SOL"}, {"TIERRA"},{"JUPITER"}, {"SATURNO"}, {"URANO"}, {"MARTE"}, {"VENUS"}, {"GALAXIA"},{"MERCURIO"}, {"NEPTUNO"}}*/, letra,  copia[15], letra_mayus;
  int i, vidas=3, perder=0, fila, col, longitud, ganaste=0, error, existe=0, aleatoria; 
  FILE *arch;

  srand(time(NULL)); 
  aleatoria=rand()%((9)+1);  
  
  char lectura_txt[15];

  
  arch = fopen("Ahorcado y palabras.txt", "r");
  for(i=0; i <= aleatoria; i++)
    fscanf(arch, "%15s", lectura_txt);
  //printf("\n%s\n", lectura_txt);
  fclose(arch);

  
  //strcpy(palabra, lectura_txt);

  /*printf("\nLa fila de la palabra es: %i", aleatoria);
  printf("\nLa palabra es: %s\n", lectura_txtOMG palabra[aleatoria]); 
  longitud=strlen(lectura_txt); 
  printf("La longitud de la palabra es: %i\n", longitud);*/ //Pueden ocupar esto para checarlo <3 

  //strcpy(copia, palabra[aleatoria]);***
  strcpy(copia, lectura_txt);
  printf("⫷ A H O R C A D O ⫸\n\n");

  for(col=0; col<=strlen(lectura_txt)-1; col++)
  {
    copia[col]='_'; 
    printf("%c ", copia[col]);
  }
  printf("%i vidas", vidas);

  vidas=3; 
  while(strcmp(copia, lectura_txt) != 0 && vidas>0)
  {
    existe=0; 
    printf("\n\nDame una letra: " ); 

    char dibujo_txt[100];    
    arch = fopen("Ahorcado y palabras.txt", "r");    
    fgets(dibujo_txt, 100, arch);
    //printf("\n%s", dibujo_txt);
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
    //
    
    
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
int main(void) {
  ahorcado();
  return 0;
}