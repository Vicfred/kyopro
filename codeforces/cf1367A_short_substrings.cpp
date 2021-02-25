// https://codeforces.com/contest/1367/problem/A

#include<iostream>
#include<algorithm>

using namespace std;

int main() {
    int tc;
    cin >> tc;

    string test;
    
    while(tc--) {
        cin >> test;
        string answer;
        for (size_t i = 1; i < test.length(); i += 2) {
            answer += test[i - 1];  // keep char at even indices
            if (i == test.length() - 1) {
                answer += test[i];  // keep both if last iteration
            }
        }

        cout << answer << endl;
    }

    return 0; 
}
