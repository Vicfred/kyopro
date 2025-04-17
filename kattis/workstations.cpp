// vicfred
// https://open.kattis.com/problems/workstations
// prioty queue, heap
#include <iostream>
#include <vector>
#include <utility>
#include <queue>

using namespace std;

typedef pair<long, long> pi;

int main() {
    long n, m;
    cin >> n >> m;

    priority_queue<pi, vector<pi>, greater<pi>> researchers;
    priority_queue<pi, vector<pi>, greater<pi>> computers;

    for(int i = 0; i < n; ++i) {
        int a, s;
        cin >> a >> s;
        researchers.push({a,s});
        //computers.push({a+s,a+s+m});
    }

    long ans = 0;

    while(!researchers.empty()) {
        auto item = researchers.top();
        researchers.pop();
        long a = item.first;
        long s = item.second;
        //cout << item.first << " " << item.second << endl;
        while(!computers.empty()) {
            auto computer = computers.top();
            if(a < computer.first) break;
            computers.pop();
            if(a >= computer.first and a <= computer.second) {
                //cout << "got " << computer.first << endl;
                ans += 1;
                break;
            }
        }
        //cout << "pushed " << a+s << " " << a+s+m << endl;
        computers.push({a+s, a+s+m});
    }

    cout << ans << endl;

    return 0;
}

