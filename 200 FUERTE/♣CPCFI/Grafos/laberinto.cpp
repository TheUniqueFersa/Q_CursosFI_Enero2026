#include <bits/stdc++.h>
using namespace std;

vector<vector<char>> grid;
queue<pair<int, int>> cola;
int n, m;

void print() {
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= m; j++) cout << grid[i][j];
        cout << endl;
    }
    cout << endl;
}

bool bfs(int i, int j) {
    grid[i][j] = '#';
    print();

    if (grid[i - 1][j] != '#') cola.push({i - 1, j});
    if (grid[i + 1][j] != '#') cola.push({i + 1, j});
    if (grid[i][j - 1] != '#') cola.push({i, j - 1});
    if (grid[i][j + 1] != '#') cola.push({i, j + 1});

    while (!cola.empty()) {
        i = cola.front().first;
        j = cola.front().second;
        cola.pop();

        if (grid[i][j] == 'F') return true;
        if (grid[i][j] == '.') return bfs(i, j);
    }
}

bool dfs(int i, int j) {
    if (grid[i][j] == 'F') return true;
    grid[i][j] = '#';
    print();

    if (grid[i - 1][j] != '#') return dfs(i - 1, j);
    if (grid[i + 1][j] != '#') return dfs(i + 1, j);
    if (grid[i][j - 1] != '#') return dfs(i, j - 1);
    if (grid[i][j + 1] != '#') return dfs(i, j + 1);
}

void solve() {
    int a, b;
    cin >> n >> m >> a >> b;
    
    grid.assign(n + 2, vector<char>(m + 2, '#'));
    for (int i = 1; i <= n; i++) for (int j = 1; j <= m; j++) cin >> grid[i][j];

    // cout << (bfs(a, b) ? "YES" : "NO");
    cout << (dfs(a, b) ? "YES" : "NO");
}
 
int main() {
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    cout.tie(0);
    int t = 1;
    // cin >> t;
    while (t--) solve();
}   