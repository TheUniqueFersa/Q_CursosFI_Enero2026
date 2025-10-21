---
pertenece a:
  - "[[USACO]]"
---
```C++
ios::sync_with_stdio(0);
cin.tie(0);
```

# Reading a complete line
```C++
string s;
getline(cin, s);
```
# Read until there is no more data available in the input
```C++
while(cin>>x){
	//code
}
```

# Using files
>Add this to the beginning of the code

```C++
freopen("input.txt", "r", stdin);
freopen("output.txt", "w", stdout);
```