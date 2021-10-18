#include <iostream>
#include <vector>

using namespace std;

int main() {
    const int max_n = 21;
    vector<long long> fibonacci(max_n);
    fibonacci[0] = 0;
    fibonacci[1] = 1;
    for(int i = 2; i < max_n; ++i) {
        fibonacci[i] = fibonacci[i - 1] + fibonacci[i - 2];
    }

    for(int i = 0; i < max_n; ++i) {
        cout << "F_" << i << " = " << fibonacci[i] << endl;
    }
}
