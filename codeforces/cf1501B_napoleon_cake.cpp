// vicfred
// https://codeforces.com/contest/1501/problem/B
// implementation, greedy
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main() {
    long t;
    cin >> t;
while(t--) {
    long n;
    cin >> n;
    
    vector<long> a(n);
    for(auto& item: a) {
        cin >> item;
    }

    vector<long> cakes(n);

    long cream = a[n - 1];
    for(long i = n - 1; i >= 0; i--) {
        cream = max(cream, a[i]);
        //cout << "cake: " << i << endl;
        //cout << "cream: " << cream << endl;
        if(cream) {
            cakes[i] = 1;
            cream -= 1;
        }
    }

    for(int i = 0; i < n; ++i)
        cout << cakes[i] << " ";
    cout << endl;
}
}

