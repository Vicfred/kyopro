// vicfred
// https://leetcode.com/problems/gray-code/description/
// brute force
/*
 * Two ways to generate the same sequence:
 * i ^ (i >> 1)
 * and
 * gray[i] = gray[i - 1] ^ (i & -i)
 * trick to understand: LSB is the bit that
 * changes when going from i - 1 to i
 * in both methods.
 */
#include <iostream>
#include <vector>
using namespace std;

vector<int> grayCode(int n) {
  vector<int> gray_codes;
  int total = 1 << n;
  for(int i = 0; i < total; ++i) {
    int gray = i ^ (i >> 1); // XOR trick
    gray_codes.push_back(gray);
  }
  return gray_codes;
}

int main() {
  int n;
  cout << "Enter number of bits n: ";
  if (!(cin >> n) || n < 1) {
    cerr << "Invalid n\n";
    return 1;
  }
  int total = 1 << n; // 2ⁿ codes
  for (int i = 0; i < total; ++i) {
    int g = i ^ (i >> 1); // XOR trick: binary→Gray
    cout << g << ": ";
    // Print g as an n-bit binary string (MSB first)
    for (int b = n - 1; b >= 0; --b) {
      cout << ((g >> b) & 1);
    }
    cout << "\n";
  }
  cout << "=====" << endl;
  vector<int> gray(total);
  cout << "0: " << gray[0] << endl;
  for(int i = 1; i < total; ++i) {
    gray[i] = gray[i - 1] ^ (i & -i);
    // Print g as an n-bit binary string (MSB first)
    cout << gray[i] << ": ";
    for (int b = n - 1; b >= 0; --b) {
      cout << ((gray[i] >> b) & 1);
    }
    cout << "\n";
  }
  return 0;
}
