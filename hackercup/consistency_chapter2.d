// Vicfred
// https://www.facebook.com/codingcompetitions/hacker-cup/2021/qualification-round/problems/A2
// floyd warshall, graph, brute force, bfs, dfs
import std.algorithm;
import std.stdio;

void main() {
    const int INF = 2^^20;
    int T;
    readf("%s\n", &T);

for(int kase = 1; kase <= T; ++kase) {
    int[][] dist = new int[][](26,26);
    for(int i = 0; i < 26; ++i) {
        for(int j = 0; j < 26; ++j) {
            if(i == j) {
                dist[i][j] = 0;
            } else {
                dist[i][j] = INF;
            }
        }
    }
    string S;
    readf("%s\n", &S);
    int K;
    readf("%s\n", &K);
    foreach(i; 0..K) {
        char a, b;
        readf("%s%s\n",&a, &b);
        dist[a - 'A'][b - 'A'] = 1;
    }
    for(int k = 0; k < 26; k++) {
        for(int i = 0; i < 26; i++) {
            for(int j = 0; j < 26; j++) {
                dist[i][j] = min(dist[i][j], dist[i][k] + dist[k][j]);
            }
        }
    }
    int ans = INF;
    for(char letter = 'A'; letter <= 'Z'; ++letter) {
        int cost = 0;
        foreach(c; S) {
            cost += dist[c - 'A'][letter - 'A'];
        }
        ans = min(ans, cost);
    }
    if(ans == (INF)) {
        ans = -1;
    }
    writefln("Case #%s: %s", kase, ans);
}
}
