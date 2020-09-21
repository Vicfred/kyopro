// Vicfred
// https://codeforces.com/contest/1407/problem/B
// math, implementation
#include <algorithm>
#include <iostream>
#include <numeric>
#include <vector>

using namespace std;

int main() {
    int t;
    cin >> t;

    while(t--) {
        int n;
        cin >> n;

        vector<int> a(n);
        for(auto &item: a)
            cin >> item;

        sort(a.begin(), a.end(), greater<int>());

        int current = a.front();
        vector<int> ans = {current};
        a.erase(a.begin());

        int GCD = current;
        while(!a.empty()) {
            int maxima = 0;
            current = ans.back();
            //cout << "current: " << current << endl;
            //cout << "CURRENT GCD: " << GCD << endl;
            for(auto item: a) {
                if(gcd(GCD, item) > maxima) {
                    maxima = gcd(GCD, item);
                }
            }
            //cout << "maxima: " << maxima << endl;
            GCD = gcd(GCD,maxima);
            for(auto iter = a.begin(); iter != a.end();) {
                if(gcd(GCD, *iter) == maxima) {
                    //cout << "found " << *iter << endl;
                    ans.push_back(*iter);
                    a.erase(iter);
                    break;
                } else {
                    ++iter;
                }
            }
        }
        
        for(auto item: ans)
            cout << item << " ";
        cout << endl;
    }

    return 0;
}

