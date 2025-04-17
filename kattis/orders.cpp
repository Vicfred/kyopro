// vicfred
// https://open.kattis.com/problems/orders
// dynamic programming
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
    int n;
    cin >> n;
    vector<int> c(n);
    for(int i = 0; i < n; i++)
        cin >> c[i];

    vector<int> dp(30001, -1);
    dp[0] = 0;

    for(int i = 0; i < n; i++) {
        for(int j = 0; j < dp.size() - c[i]; j++) {
            if(dp[j] != -1) {
                if(dp[j] == n or dp[j + c[i]] != -1)
                    dp[j + c[i]] = n;
                else
                    dp[j + c[i]] = i;
            }
        }
    }

    int m;
    cin >> m;
    int d;
    for(int i = 0; i < m; i++) {
        cin >> d;
        if(dp[d] == n)
            cout << "Ambiguous" << endl;
        else if(dp[d] == -1)
            cout << "Impossible" << endl;
        else {
            vector<int> ans;
            while(d > 0) {
                ans.push_back(dp[d] + 1);
                d -= c[dp[d]];
            }
            reverse(ans.begin(), ans.end());
            for(int item: ans)
                cout << item << " ";
            cout << endl;
        }
    }

    return 0;
}

