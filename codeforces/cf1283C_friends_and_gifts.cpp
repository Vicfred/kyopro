// Vicfred
// https://codeforces.com/contest/1283/problem/C
// implementation
#include <iostream>
#include <vector>

using namespace std;

int main() {
    int n;
    cin >> n;

    vector<int> f(n);
    vector<int> indegree(n), outdegree(n);

    for(int i = 0; i < n; i++) {
        cin >> f[i];
        f[i] -= 1;
        if(f[i] != -1) {
            outdegree[i] += 1;
            indegree[f[i]] += 1;
        }
    }

    //for(int item: f)
    //    cout << item+1 << " ";
    //cout << endl;
    //for(int item: indegree)
    //    cout << item << " ";
    //cout << endl;
    //for(int item: outdegree)
    //    cout << item << " ";
    //cout << endl;

    vector<int> alones;
    for(int i = 0; i < n; i++) {
        if(indegree[i] == 0 and outdegree[i] == 0) {
            alones.push_back(i);
        }
    }

    //cout << "solitos calculados " << alones.size() << endl;

    if(alones.size() == 1) {
        //cout << "caso 1" << endl;
        int forever = alones[0];
        for(int i = 0; i < n; i++) {
            if(indegree[i] == 0 and i != forever) {
                f[forever] = i;
                outdegree[forever] += 1;
                indegree[i] += 1;
                break;
            }
        }
    } else if(alones.size() >= 2) {
        //cout << "caso 2" << endl;
        for(int i = 0; i < alones.size(); i++) {
            int forever = alones[i];
            int alone = alones[(i + 1) % alones.size()];
            f[forever] = alone;
            outdegree[forever] += 1;
            indegree[alone] += 1;
        }
    }

    //cout << "solitos juntados" << endl;

    vector<int> heads, tails;
    for(int i = 0; i < n; i++) {
        if(indegree[i] == 0) heads.push_back(i);
        if(outdegree[i] == 0) tails.push_back(i);
    }

    for(int i = 0; i < tails.size(); i++) {
        f[tails[i]] = heads[i];
    }

    for(int item: f) {
        cout << item + 1 << " ";
    } cout << endl;

    return 0;
}

