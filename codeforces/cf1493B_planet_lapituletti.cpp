// vicfred
// https://codeforces.com/contest/1493/problem/B
// implementation
#include <iostream>
#include <cstdio>
#include <set>
#include <algorithm>
#include <iterator>
#include <string>

using namespace std;

int main() {
    int T;
    cin >> T;

    set<char> invalid = {'3', '4', '6', '7', '9'};

    int h, m;
    int s, t;
while(T--) {
    cin >> h >> m;
    scanf("%d:%d\n", &s, &t);

    bool found = false;
    while(s < h) {
        while(t < m) {
            //cout << s << ":" << t << endl;
            string S = to_string(s);
            string T = to_string(t);
            if(S.size() < 2)
                S = '0' + S;
            if(T.size() < 2)
                T = '0' + T;
            string hour = S + T;
            bool valid = true;
            for(int i = 0; i < hour.size(); i++){
                if(invalid.count(hour[i]) > 0)
                    valid = false;
            }
            string ss, tt;
            for(int i = 0; i < S.size(); i++) {
                if(S[i] == '2')
                    ss = '5' + ss;
                else if(S[i] == '5')
                    ss = '2' + ss;
                else
                    ss = S[i] + ss;
            }
            for(int i = 0; i < T.size(); i++) {
                if(T[i] == '2')
                    tt = '5' + tt;
                else if(T[i] == '5')
                    tt = '2' + tt;
                else
                    tt = T[i] + tt;
            }
            //cout << S << ":" << T << endl;
            //cout << tt << ":" << ss << endl;
            if(stoi(ss) >= m) {
                valid = false;
            }
            if(stoi(tt) >= h) {
                valid = false;
            }
            if(valid) {
                cout << S << ":" << T << endl;
                found = true;
                break;
            }
            t++;
        }
        if(found)
            break;
        t = 0;
        s++;
    }
    if(!found)
        cout << "00:00" << endl;
}
    return 0;
}

