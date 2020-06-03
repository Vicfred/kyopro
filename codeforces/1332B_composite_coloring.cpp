// Vicfred
// https://codeforces.com/problemset/problem/1332/B
// math, greedy

#include <algorithm>
#include <iostream>
#include <vector>
#include <map>
#include <set>

using namespace std;

// requires Iterator satisfies RandomAccessIterator
template <typename Iterator>
size_t prime_sieve(Iterator start, Iterator end) {
    if (start == end) return 0;
    // clear the container with 0
    std::fill(start, end, 0);
    // mark composites with 1
    for (Iterator prime_it = start + 1; prime_it != end; ++prime_it) {
        if (*prime_it == 1) continue;
        // determine the prime number represented by this iterator location
        size_t stride = (prime_it - start) + 1;
        // mark all multiples of this prime number up to max
        Iterator mark_it = prime_it;
        while ((end - mark_it) > stride) {
            std::advance(mark_it, stride);
            *mark_it = 1;
        }
    }
    // copy marked primes into container
    Iterator out_it = start;
    for (Iterator it = start + 1; it != end; ++it) {
        if (*it == 0) {
            *out_it = (it - start) + 1;
            ++out_it;
        }
    }
    return out_it - start;
}

int main() {
    vector<int> primes(100);
    int count = prime_sieve(primes.begin(), primes.end());

    int t;
    cin >> t;

    for(int kase = 0; kase < t; kase++) {
        int n;
        cin >> n;
        vector<int> a(n);

        for(int i = 0; i < n; i++) {
            cin >> a[i];
        }

        map<int,set<int>> elements;
        for(int item: a) {
            for(int prime: primes) {
                if(item%prime == 0) {
                    elements[prime].insert(item);
                    break;
                }
            }
        }

        int m = 1;
        vector<int> color(1001);
        for(int prime: primes) {
            if(elements[prime].size() > 0) {
                for(int item: elements[prime]) {
                    color[item] = m;
                }
                m += 1;
            }
        }

        cout << m-1 << endl;
        for(int item: a) {
            cout << color[item] << " ";
        } cout << endl;
    }
    return 0;
}

