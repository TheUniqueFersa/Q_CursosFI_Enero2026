# Flood Fill (DFS)
```c++
#include <iostream>

#include <vector>
using namespace std;
  
const int MAXN = 10000;
const int MAXM = 10000;
// char grid[150][150];
vector<vector<char>> GRID;

int n,m;
bool visited[MAXN][MAXM];
int direcciones = 4;

int dr_8[] = {1, 1, 0, -1, -1, -1, 0, 1};
int dc_8[] = {0, 1, 1, 1, 0, -1, -1, -1};

// abajo, derecha, arriba, izquierda
int dr[] = {1, 0, -1, 0};
int dc[] = {0, 1, 0, -1};

int currentSize = 0; // reset to 0 each time we start a new component
  
void floodfill(int r, int c, int color){
    if(r < 0 || r >= n || c < 0 || c >= m) return;
    if(GRID[r][c] != color) return;
    if(visited[r][c]) return;
    visited[r][c] = true;
    currentSize++;
    for(int i = 0; i<direcciones; i++)
        floodfill(r+dr[i], c+dc[i], color);
}
  
void solve(){
    char c1 = '.'; // non visited
    cin>>n>>m;
    GRID.assign(n, vector<char>(m));
  
    for(int i = 0; i<n; i++){
        for(int j = 0; j<m; j++){
            cin >> GRID[i][j];
        }
    }
  
    floodfill(1, 1, c1);
    cout << currentSize << endl;
}
int main(){
    solve();
    return 0;
}
```
# Flood Fill (BFS)
```c++
#include <bits/stdc++.h>
#define endl '\n'
using namespace std;

  
const int N=1000;
const int M=1000;
char grid[N][M];
bool visited[N][M];
  
int direcciones = 4;
int dr_8[] = {1, 1, 0, -1, -1, -1, 0, 1};
int dc_8[] = {0, 1, 1, 1, 0, -1, -1, -1};

// abajo, derecha, arriba, izquierda
int dr[] = {1, 0, -1, 0};
int dc[] = {0, 1, 0, -1};
  
vector<vector<int>> depth;
//coordenadas x, y, Color a pintar(pared)
void floodfill(int x, int y, char color, int r, int c){
    if(visited[x][y]) return;
    // grid[x][y] = color; // color it as visited
    queue<pair<int, int>> q;
    visited[x][y] = true;
    depth[x][y] = 0;
  
    q.push({x,y});

    while(!q.empty()){
        pair<int, int> current = q.front();
        q.pop();
        int x1 = current.first;
        int y1 = current.second;
        for(int d = 0; d<direcciones; d++){
            int nx = x1+dr[d];
            int ny = y1+dc[d];
            if(nx>=0 && nx<r && ny>=0 && ny<c && grid[nx][ny] != color && !visited[nx][ny]){
                visited[nx][ny] = true;
                // grid[nx][ny] = color; // color it as visited
                depth[nx][ny] = depth[x1][y1] + 1;
                q.push({nx,ny});
            }
        }
    }
}
void imprimirGrid(int n, int m){
    for(int i = 0; i<n; i++){
        for(int j = 0; j<m; j++){
            cout << grid[i][j];
        }cout << endl;
    }
}
void printVisited(int n, int m){
    //Imprimir visitados
    for(int i = 0; i<n; i++){
        for(int  j =0; j<m; j++){
            if(visited[i][j]) cout << 1 ;
            else cout << 0;
        }
        cout << endl;
    }
}
void printDepth(int n, int m){
    //Imprimir depth
    for(vector<int> each : depth){
        for(int each2 : each){
            // if(each2 == -1) cout << '#' ;
            string s;
            if(each2 < 10 && each2 >= 0) s = "0"+to_string(each2);
            else s = to_string(each2);
            cout << "|"<< s << "|";
        }
        cout << endl;
    }
}

void solve(){
    int n, m;
    cin >> n >> m;
    depth.assign(n, vector<int>(m, -1));
    int colorPared='#';
  
    //input routine
    for(int i = 0; i<n; i++)
        for(int j = 0; j<m; j++)
            cin >> grid[i][j];
            
    for(int i = 0; i<n; i++){
        for(int j = 0; j<m; j++){
            if(grid[i][j] != colorPared){
                floodfill(i, j, colorPared, n, m);
            }
        }
    }
    // printDepth(n,m);
}

int main(){
    solve();
    return 0;
}
```