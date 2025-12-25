#include <bits/stdc++.h>
using namespace std;

vector<vector<int>> grafo;
vector<vector<int>> caminos;

void dfs(int nodo, int camino) {
    caminos[camino].push_back(nodo);

    int aux = 1;
    for (auto vecino : grafo[nodo]) {
        if (aux++ != 1) {
            camino = caminos.size();
            caminos.push_back(vector<int>());
        }
        
        dfs(vecino, camino);
    }
}

void solve() {
    int n;
    cin >> n;
    
    grafo.assign(n + 1, vector<int>());
    
    int p, raiz;
    for (int i = 1; i <= n; i++) {
        cin >> p;
        if (p == i) raiz = i;
        else grafo[p].push_back(i);
    }
    
    caminos.assign(1, vector<int>());
    dfs(raiz, 0);
    
    cout << caminos.size() << endl;
    for (auto camino : caminos) {
        cout << camino.size() << endl;
        for (auto nodo : camino) cout << nodo << ' ';
        cout << endl;
    }
    cout << endl;
}
 
int main() {
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    cout.tie(0);
    int t = 1;
    cin >> t;
    while (t--) solve();
}   