// Vicfred
// https://open.kattis.com/problems/geppetto
// brute force, bitmask
#include <iostream>
#include <set>
#include <utility>

using namespace std;

int main() {
    int N, M;
    cin >> N >> M;

    set<pair<int,int>> ingredients;
    for(int i = 0; i < M; i++) {
        int a, b;
        cin >> a >> b;
        ingredients.insert(make_pair(a, b));
        ingredients.insert(make_pair(b, a));
    }

    long long ans = 0LL;
    for(int mask = 0; mask < 1 << N; mask++) {
        bool flag = true;
        for(int i = 0; i < N; i++) {
            for(int j = i + 1; j < N; j++) {
                pair<int, int> ingredient(i+1,j+1);
                if(
                        mask & (1 << i)
                        and mask & (1 << j) 
                        and ingredients.count(ingredient) > 0
                ) flag = false;
            }
        }
        if(flag)
            ans += 1;
    }

    cout << ans << endl;

    return 0;
}

