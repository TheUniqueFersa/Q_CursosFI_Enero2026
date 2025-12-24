#include <bits/stdc++.h>
using namespace std;

#define ll long long
#define vi vector<int>
#define vc vector<char>
#define fillV(a,n) for(int i = 0; i < n; i++) cin >> a[i];

int gcd(int a, int b) {
    if (b == 0) return a;
    return gcd(b, a % b);
}

void solve() {
    int n; 
    cin >> n; //numero de aristas
    
    map<int, int> a;
    int n1, n2;
    for (int i = 0; i < n; i++) {
        cin >> n1 >> n2;
        a[n1]++;
        a[n2]++;
    }

    int impares = 0;
    for (auto i : a) {
        if (i.second % 2 != 0) impares++;
    }

    if (impares == 2) cout << "YES" << endl;
    else cout << "NO" << endl;
}

int main() {
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    cout.tie(0);
    int t=1;
    //cin >> t;
    while (t--) solve();
    return 0;
}