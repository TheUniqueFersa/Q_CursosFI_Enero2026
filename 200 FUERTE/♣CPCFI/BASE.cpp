//# - Name
//#include <bits/stdc++.h>
#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;

// Variables
typedef long long int ll;
typedef unsigned long long  ull;
typedef long double ld;

// Functions
#define sz(x) (int)x.size()
#define fr(i, n) for (int i = 0; i < n; i++)
#define input(v) for (auto &it : v) \
                      cin >> it;
#define output(v) for (auto &it : v) \
                      cout << it <<" ";

void fastIO(){
    std::ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);
}

bool binarySearch(const std::vector<int>& arr, int target) {
    int left = 0;
    int right = arr.size() - 1;

    while (left <= right) {
        int mid = left + (right - left) / 2;
        
        if (arr[mid] == target) {
            return true;
        } else if (arr[mid] < target) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    return false;
}


bool comp (const int& a, const int& b)
{
    return  a > b;
}

void solve(){
    vector<int> ve={1,4,2,1};
    sort(ve.begin(),ve.end());
    if(binarySearch(ve,5)) cout<<"YES"<<endl; else cout<<"NO"<<endl;
    output(ve);
}

int main(){
    fastIO();
    int t = 1; //cin>>t;
    fr(i, t){
        solve();
    }

    return 0;
}
 