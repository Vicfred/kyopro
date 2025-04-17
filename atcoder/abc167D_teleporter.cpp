// vicfred
// https://atcoder.jp/contests/abc167/tasks/abc167_d
// implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
    const long long int MAXN = 2LL*10e5+5LL;

    long long n, k;
    cin >> n >> k;

    vector<long long> A(MAXN);
    for(long long i = 1LL; i <= n; i++)
        cin >> A[i];

    vector<long long> visited(MAXN);

    long long current = 1LL;
    long long steps = 0LL;
    long long cycle_length = 0LL;

    while(visited[current] == 0LL and steps < k) {
        visited[current] = steps;
        steps += 1LL;
        current = A[current];
        cycle_length = steps-visited[current];
    }

    int left = (k-visited[current])%cycle_length;

    while(left > 0) {
        current = A[current];
        left -= 1;
    }

    cout << current << endl;

    return 0;
}

