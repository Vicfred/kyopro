#include <iostream>
#include <vector>
#include <stack>

using namespace std;

int main() {
    int N;
    cin >> N;

    vector<int> A(N);
    for(int &item: A)
        cin >> item;

    vector<int> posLeft(N);
    stack<int> S;

    for(int i = 0; i < N; i++) {
        while(!S.empty() && A[S.top()] >= A[i])
            S.pop();
        posLeft[i] = S.empty() ? 0 : S.top() + 1;
        S.push(i);
    }

    vector<int> posRight(N);
    S = {};

    for(int i = N - 1; i >= 0; i--) {
        while(!S.empty() && A[S.top()] >= A[i])
            S.pop();
        posRight[i] = S.empty() ? N - 1 : S.top() - 1;
        S.push(i);
    }

    int maxArea = 0;
    for(int i = 0; i < N; i++) {
        maxArea = max(maxArea, (posRight[i] - posLeft[i] + 1) * A[i]);
    }

    cout << maxArea << endl;

    return 0;
}
