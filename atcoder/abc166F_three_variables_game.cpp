// Vicfred
// https://atcoder.jp/contests/abc166/tasks/abc166_f
// dfs
#include <iostream>
#include <queue>
#include <vector>
#include <string>
#include <stack>

using namespace std;

const unsigned long MAXN = 100005;

int n;
string S[MAXN];
bool visited[MAXN][10][10][10];
stack<char> st;
stack<char> answer;

bool dfs(int i, int a, int b, int c) {
    if(i == n) {
        while(!st.empty()) {
            answer.emplace(st.top());
            st.pop();
        }
        return true;
    }

    visited[i][a][b][c] = true;

    if(S[i] == "AB") {
        if(a+1 < 10 && b > 0 && !visited[i+1][a+1][b-1][c]) {
            st.emplace('A');
            if(dfs(i+1, a+1, b-1, c)) {
                return true;
            }
            st.pop();
        }
        if(b+1 < 10 && a > 0 && !visited[i+1][a-1][b+1][c]) {
            st.emplace('B');
            if(dfs(i+1, a-1, b+1, c)) {
                return true;
            }
            st.pop();
        }
    }
    else if(S[i] == "AC") {
        if(a+1 < 10 && c > 0 && !visited[i+1][a+1][b][c-1]) {
            st.emplace('A');
            if(dfs(i+1, a+1, b, c-1)) {
                return true;
            }
            st.pop();
        }
        if(c+1 < 10 && a > 0 && !visited[i+1][a-1][b][c+1]) {
            st.emplace('C');
            if(dfs(i+1, a-1, b, c+1)) {
                return true;
            }
            st.pop();
        }
    }
    else {
        // case BC
        if(b+1 < 10 && c > 0 && !visited[i+1][a][b+1][c-1]) {
            st.emplace('B');
            if(dfs(i+1, a, b+1, c-1)) {
                return true;
            }
            st.pop();
        }
        if(c+1 < 10 && b > 0 && !visited[i+1][a][b-1][c+1]) {
            st.emplace('C');
            if(dfs(i+1, a, b-1, c+1)) {
                return true;
            }
            st.pop();
        }
    }

    return false;
}

int main () {
    int a, b, c;
    cin >> n >> a >> b >> c;

    for(int i = 0; i < n; ++i)
        cin >> S[i];

    if(a > 0 and b > 0 and c > 0) {
        cout << "Yes" << endl;

        bool idx[3] = {true, true, true};
        for(int i = 0; i < n; i++) {
            if(S[i] == "AB") {
                cout <<  "AB"[idx[0]] << endl;
                idx[0] = !idx[0];
            }
            else if(S[i] == "BC") {
                cout <<  "BC"[idx[1]] << endl;
                idx[1] = !idx[1];
            }
            else {
                cout <<  "CA"[idx[2]] << endl;
                idx[2] = !idx[2];
            }
        }
    } else {
        if(dfs(0, min(a, 3), min(b, 3), min(c, 3))) {
            cout << "Yes" << endl;
            while(!answer.empty()) {
                cout << answer.top() << endl;
                answer.pop();
            }
        } else {
            cout << "No" << endl;
        }
    }

    return 0;
}

