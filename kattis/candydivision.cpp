// vicfred
// https://open.kattis.com/problems/candydivision
// math
#include <iostream>
#include <set>

using namespace std;

int main() {
    long long N;
    cin >> N;

    set<long> divisors;

    divisors.insert(0);
    for(long i = 1; i*i <= N; ++i) {
        if(N%i == 0) {
            divisors.insert(i-1);
            divisors.insert(N/i-1);
        }
    }

    for(long item: divisors) {
        cout << item << " ";
    } cout << endl;

    return 0;
}
