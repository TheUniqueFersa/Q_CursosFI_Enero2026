[[♣Towards]]
(Fragmento tomado de 'KAREL VA A CHOCAAAAR.txt', actualmente en [[Bóveda de archivos]])

Programas Lineales o secuenciales: Sin estructuras de control

Estructuras  de control : Permite crear programas ramificados



## - Iterativas
	+Definida (iterate)
	+Indefinida (while)
DO WHILE
## - Condicionales
	+Simples
	+Dobles



for
while



if 


if else
switch





# Karel

Operaciones logicas:

Condiciones simultáneas
And
&&

Condiciones múltiples
Or
||


Condiciones:


nextToABeeper
notNextToABeeper


frontIsClear
frontIsBlocked



leftIsClear
leftIsBlocked



rightIsClear
rightIsBlocked



facingNorth

facingSouth

facingEast

facingWest




notfacingNorth

notfacingSouth

notfacingEast

notfacingWest


//beeper en la mochila:

anyBeepersInBeeperBag






// karel avanza
frontIsClear

	nextToABeeper


	// karel sube 1 bloque
	frontIsBlocked



// karel ya llego al fin








``` Java
class program {
    program () {
        
        while(notFacingEast)
        {
        	turnleft();
        }
        
        while(nextToABeeper)
        {
        	pickbeeper();
        }
        
        while(notNextToABeeper)
        {
        	while(frontIsBlocked)
        	{
        		turnleft();
            	move();
            
            	iterate(3)
            	{
            		turnleft();
            	}
        	}
            
            
        
            while(frontIsClear)
            //quitar esto porque no sirve (while)
        	{
        		move();
                while(nextToABeeper)
            	{
                	while(notFacingNorth)
                    {
                    	while(anyBeepersInBeeperBag)
        				{
        					putbeeper();
        				}
                		while(notFacingNorth)
                		{
        					turnleft();
            			}
                    }
                }
        	}
            
        
        }
        
       
        
        turnoff();
    }
}
```
















Segunda version

``` Java
class program {
    program () {
        
        while(notFacingEast)
        {
        	turnleft();
        }
        
        while(nextToABeeper)
        {
        	pickbeeper();
        }
        
        while(notNextToABeeper)
        {
        	while(frontIsBlocked)
        	{
        		turnleft();
            	move();
            
            	iterate(3)
            	{
            		turnleft();
            	}
        	}
            
            //o
            
        	move();
            
            //o
            
            while(nextToABeeper)
            {
            	while(notFacingNorth)
                {
                	while(anyBeepersInBeeperBag)
        			{
        				putbeeper();
        			}
            		while(notFacingNorth)
            		{
        				turnleft();
            		}
                }
            }
        	
            
        
        }
        
       
        
        turnoff();
    }
}
```