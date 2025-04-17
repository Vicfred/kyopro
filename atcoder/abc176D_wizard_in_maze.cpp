// vicfred
// https://atcoder.jp/contests/abc176/tasks/abc176_d
// dfs, bfs, flood fill
#include <iostream>
#include <deque>
#include <vector>
#include <string>
#include <utility>
#include <tuple>

using namespace std;

const int INF = 1<<30;

int main() {
    int H, W;
    cin >> H >> W;

    int ch, cw, dh, dw;

    cin >> ch >> cw;
    cin >> dh >> dw;

    ch -= 1;
    cw -= 1;
    dh -= 1;
    dw -= 1;

    vector<string> s(H);
    for(auto &row: s)
        cin >> row;

    vector<vector<int>> dist(H, vector<int>(W, INF));
    deque<pair<int,int>> q;
    q.push_back({ch, cw});
    dist[ch][cw] = 0;

    int dir[] = {1, 0, -1, 0, 1};

    while(!q.empty()) {
        int cx, cy;
        tie(cx, cy) = q.front();
        q.pop_front();
        for(int i = 0; i < 4; i++) {
            int nx = cx + dir[i];
            int ny = cy + dir[i + 1];
            if(nx < 0 or ny < 0 or nx >= H or ny >= W)
                continue;
            if(s[nx][ny] == '#')
                continue;
            if(dist[nx][ny] > dist[cx][cy]) {
                dist[nx][ny] = dist[cx][cy];
                q.push_front({nx, ny});
            }
        }

        for(int i = -2; i <= 2; i++) {
            for(int j = -2; j <= 2; j++) {
                int nx = cx + i;
                int ny = cy + j;
                if(nx < 0 or ny < 0 or nx >= H or ny >= W)
                    continue;
                if(s[nx][ny] == '#')
                    continue;
                if(dist[nx][ny] > dist[cx][cy] + 1) {
                    dist[nx][ny] = dist[cx][cy] + 1;
                    q.push_back({nx, ny});
                }
            }
        }
    }

    if(dist[dh][dw] == INF)
        dist[dh][dw] = -1;

    cout << dist[dh][dw] << endl;

    return 0;
}

