#include <bits/stdc++.h>
using namespace std;


#define  int long long int 
typedef long long ll;
typedef vector<int> vi;
typedef pair<int,int> ii; 
typedef vector<ii> vii;
typedef vector <vii> viii; 

		/*Función para agregar una arista*/
		void addEdge(vector<vector<int> > &graph, int begin, int end, bool directed ){
					
					/*Agregamos el nodo final a la lista de adyacencia del nodo inicial*/
					graph[begin].push_back(end);

					/*Si la gráfica no es dirigida crea la arista en sentido inverso*/
					if (!directed){
							graph[end].push_back(begin);
						}
				}


		/*Función para recorrer la gráfica*/	
		void BFS(vector <vector <int> > &graph,int origen, vector<int> &visitados){
					/*Marcamos como visitado el vértice en el cual iniciamos el recorrido*/	
					visitados[origen]=1; 

					/*Declaramos una cola para controlar el flujo del algoritmo */
					queue <int> cola;

					/*Ingresamos el nodo incial a la cola*/
					cola.push(origen); 

					//Imprime las capas del recorrido
					cout<< origen;

					/*Mientras la cola no esté vacía, tomamos el primer elemento y lo desencolamos*/	
						while(!cola.empty()){
								
								//Imprime las capas del recorrido//
								cout << "--";

								//Tomamos el primer elemento de la cola
								int siguiente= cola.front();
								cola.pop();
								

								/*Accedemos a la lista de adyacencia del vértice actual */	
								for(auto u: graph[siguiente]){
										
										/*Para cada vértice de la lista de adyacencia se verifica si este ya fue visitado, 
										en caso de ser así, continuamos*/	
										if(visitados[u]==1) continue;

										/*Si el vértice actual no ha sido visitado, se marca*/	
										visitados[u]=1;
										cout <<u<< ",";

										/*Se agrega el vértice actual a la cola*/	
										cola.push(u);
								}
								
							}	
						}


/*Función principal*/
int32_t main(){

	/*Simula un juraod en línea, no hacer caso*/
  #ifndef ONLINE_JUDGE
  freopen("input.txt", "r", stdin);
  freopen("output.txt", "w", stdout);
  #endif 

	/*Declaramos y leemos propiedades del grafo */
	int tamano;
	cin >>tamano;

	int aristas;
	cin >>aristas;

	/*Declaramos nuestra lista de adyacencia como un vector de vectores de enteros*/
	vector <vector <int> > graph(tamano);

	/*Declaramos un vector que marque los vértices visitados, de tal manera que no se repitan operaciones
	de manera innecesaria */
	/*El vector es inicializado con todos sus valores en cero, una vez que un vértice
	es revisado, se cambiará el valor a 1 dentro de la función BFS */
	vector<int> visitados(tamano,0);

	
		

			/*Leemos las aristas y construimos la gráfica llamando addEdge*/
			for (int i=0; i<aristas; i++){
					int aux1, aux2;
					cin >>aux1;
					cin >>aux2;
					/*Esta función toma como parámetros la gráfica, el vértice inicial, el vértice final y un
					booleano para determinar si la gráfica es dirigida o no.*/
					addEdge(graph, aux1, aux2, false);
				}

	/*Llamamos a BFS pasando como argumentos la gráfica, el vértice inicial, la lista de visitados*/			
	BFS(graph,0, visitados);

return 0;
 
}