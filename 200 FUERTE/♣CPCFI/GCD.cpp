#include<iostream>

using namespace std;

int gcd(int a,int b)
{
    if(b==0) return a;
    return gcd(b,a%b);
}

void solve(){
    
}

int main()
{
    solve();
    return 0;
}