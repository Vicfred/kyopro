// unihernandez22
// https://atcoder.jp/contests/abc147/tasks/abc147_b
// implementation

#include<iostream>
#include<string.h>

using namespace std;

int main() {
	string s;
	int ans = 0;
	cin >> s;
	for(int i = 0; i < s.size()/2; i++) {
		if (s[i] != s[s.size()-i-1])
			ans++;
	}
	cout << ans << endl;
	return 0;
}
