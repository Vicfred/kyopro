// RasecBadguy
// https://codeforces.com/contest/1501/problem/B
// Data structures, Segment tree
#include <bits/stdc++.h>
using namespace std;
#define optimizar_io ios_base::sync_with_stdio(false);cin.tie(0);
#define MAXN 1000010
 
long long int arr[MAXN];
 
struct SegmentTree {
    
    long long int *stree;
    vector<long long int> lazy;
 
    SegmentTree(int N) {
        stree = new long long int[getSegmentTreeSize(N)];
        lazy.assign(getSegmentTreeSize(N), 0);
        buildTree(1, 0, N - 1);
    }
 
    void buildTree(int nodo, int L, int R) {
 
        if (L == R)
            stree[nodo] = arr[L];
        else {
            int mid = (L + R)/2, leftIdx = 2 * nodo, rightIdx = 2 * nodo + 1;
            buildTree(leftIdx, L, mid);
            buildTree(rightIdx, mid + 1, R);
            stree[nodo] = stree[leftIdx] + stree[rightIdx];
        }
    }
 
    long long int query(int nodo, int L, int R, int i, int j) {
 
        int mid = (L + R) / 2, leftIdx = 2 * nodo, rightIdx = 2 * nodo + 1;
        if (lazy[nodo] != 0) {
            stree[nodo] += (R - L + 1) * lazy[nodo];
            if (L != R) {
                lazy[leftIdx] += lazy[nodo];
                lazy[rightIdx] += lazy[nodo];
            }
            lazy[nodo] = 0;
        }
        
        if (L >= i && R <= j)
            return stree[nodo];
        
        if (j <= mid)
            return query(leftIdx, L, mid, i, j);
        if (i > mid)
            return query(rightIdx, mid + 1, R, i, j);
        
        long long int leftResult = query(leftIdx, L, mid, i, mid);
        long long int rightResult = query(rightIdx, mid + 1, R, mid + 1, j);
        long long int result = leftResult + rightResult;
        return result;
    }
 
    void updateRange(int nodo, int low, int high, int startRange, int endRange, long long int value) {
 
        int mid = (low + high) / 2, leftIdx = 2 * nodo, rightIdx = 2 * nodo + 1;
        if (lazy[nodo] != 0) {
            stree[nodo] += (high - low + 1) * lazy[nodo];
            if (low != high) {
                lazy[leftIdx] += lazy[nodo];
                lazy[rightIdx] += lazy[nodo];
            }
            lazy[nodo] = 0;
        }
        
        if (low > high || startRange > high || endRange < low) {
            return;
        }
        
        if (startRange <= low && endRange >= high) {
            stree[nodo] += (high - low + 1) * value;
            if (low != high) {
                lazy[leftIdx] += value;
                lazy[rightIdx] += value;
            }
            return;
        }
        updateRange(leftIdx, low, mid, startRange, endRange, value);
        updateRange(rightIdx, mid + 1, high, startRange, endRange, value);
        stree[nodo] = stree[leftIdx] + stree[rightIdx];
    }
 
    int getSegmentTreeSize(int N) {
        int size = 1;
        for(; size < N; size <<= 1);
        return size << 1;
    }
};
 
int main() {
	optimizar_io
	int tc, n, a[200010];
 
	cin >> tc;
	while (tc--) {
		cin >> n;
		for (int i = 0; i < n; i++) cin >> a[i];
		SegmentTree st(n);
		for (int i = 0; i < n; i++) {
			if (a[i]) {
				// cout << i - a[i] + 1 << "," << i << "\n";
				st.updateRange(1, 0, n - 1, max(0, i - a[i] + 1), i, 1);
			}
		}
		for (int i = 0; i < n; i++) {
			if (st.query(1, 0, n - 1, i, i))
				cout << "1 ";
			else
				cout << "0 ";
		}
		cout << "\n";
	}
	return 0;
}