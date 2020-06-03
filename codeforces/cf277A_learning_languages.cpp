// Vicfred
// https://codeforces.com/problemset/problem/277/A
// dsu, dfs
#include <iostream>
#include <vector>
#include <map>
#include <unordered_set>

using namespace std;

class UnionFind {
    private:
        vector<int> p, rank, setSize;
        int numSets;
    public:
        UnionFind(int N) {
            setSize.assign(N, 1); numSets = N; rank.assign(N, 0);
            p.assign(N, 0); for (int i = 0; i < N; i++) p[i] = i; }
        int findSet(int i) { return (p[i] == i) ? i : (p[i] = findSet(p[i])); }
        bool isSameSet(int i, int j) { return findSet(i) == findSet(j); }
        void unionSet(int i, int j) {
            if (!isSameSet(i, j)) { numSets--;
                int x = findSet(i), y = findSet(j);
                if (rank[x] > rank[y]) { p[y] = x; setSize[x] += setSize[y]; }
                else                   { p[x] = y; setSize[y] += setSize[x];
                    if (rank[x] == rank[y]) rank[y]++; } } }
        int numDisjointSets() { return numSets; }
        int sizeOfSet(int i) { return setSize[findSet(i)]; }
};

int main() {
    int n, m;
    cin >> n >> m;

    map<int, unordered_set<int>> languages;

    bool something = false;

    for(int i = 0; i < n; ++i) {
        int k;
        cin >> k;
        if(k > 0)
            something = true;

        for(int j = 0; j < k; ++j) {
            int language;
            cin >> language;
            languages[i].insert(language);
        }
    }

    int extra =  0;

    if(!something) {
        languages[0].insert(1);
        extra += 1;
    }

    UnionFind UF(n);

    for(int i = 0; i < n; ++i) {
        for(int j = 0; j < i; ++j) {
            for(int language: languages[i]) {
                if(languages[j].count(language) > 0) {
                    UF.unionSet(i,j);
                }
            }
        }
    }

    cout << UF.numDisjointSets()-1+extra << endl;

    return 0;
}
