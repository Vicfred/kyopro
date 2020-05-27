// Vicfred
// https://atcoder.jp/contests/abc161/tasks/abc161_d
// dfs
#include <algorithm>
#include <iostream>
#include <vector>
#include <queue>
#include <map>
#include <set>

using namespace std;

int main() {
    int k;
    cin >> k;

    queue<long long> q;
    
    for(long long i = 1LL; i <= 9LL; i++)
        q.push(i);

    set<long long> lunlun;
    map<long long, int> visited;

    while(!q.empty()) {
        long long item = q.front();
        q.pop();

        if(lunlun.size() > k-1)
            break;

        if(visited.count(item) > 0)
            continue;

        visited[item] = 1;
        lunlun.insert(item);

        if(item%10LL != 0LL)
            q.push(item*10LL+item%10LL-1LL);
        q.push(item*10LL+item%10LL);
        if(item%10LL != 9LL)
            q.push(item*10LL+item%10LL+1LL);
    }

    cout << *(--lunlun.end()) << endl;
}

