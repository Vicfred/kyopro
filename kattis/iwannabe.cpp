// Vicfred
// https://open.kattis.com/problems/iwannabe
// sorting, data structures, implementation
#include <algorithm>
#include <iostream>
#include <vector>
#include <set>
#include <tuple>

using namespace std;

typedef tuple<long,long,long> pokemon;

int main() {
    int n, k;
    cin >> n >> k;

    vector<pokemon> pokemons;
    set<pokemon> team;

    long a, d, h;
    for(int i = 0; i < n; i++) {
        cin >> a >> d >> h;
        pokemons.push_back({a, d, h});
    }

    sort(pokemons.begin(), pokemons.end(), [](pokemon a, pokemon b) {
            return get<0>(a) > get<0>(b);
    });

    /*
    for(auto a: pokemons) {
        cout << get<0>(a) << " " << get<1>(a) << " " << get<2>(a) << endl;
    }
    */

    for(int i = 0; i < k; i++)
        team.insert(pokemons[i]);

    sort(pokemons.begin(), pokemons.end(), [](pokemon a, pokemon b) {
            return get<1>(a) > get<1>(b);
    });

    /*
    for(auto a: pokemons) {
        cout << get<0>(a) << " " << get<1>(a) << " " << get<2>(a) << endl;
    }
    */

    for(int i = 0; i < k; i++)
        team.insert(pokemons[i]);

    sort(pokemons.begin(), pokemons.end(), [](pokemon a, pokemon b) {
            return get<2>(a) > get<2>(b);
    });

    /*
    for(auto a: pokemons) {
        cout << get<0>(a) << " " << get<1>(a) << " " << get<2>(a) << endl;
    }
    */

    for(int i = 0; i < k; i++)
        team.insert(pokemons[i]);
    
    cout << team.size() << endl;

    return 0;
}

