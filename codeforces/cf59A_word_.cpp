// https://codeforces.com/problemset/problem/59/A
#include<iostream>
#include<string>

using namespace std;

void uppercase(string& str) {
    for (auto c : str)
        printf("%c", toupper(c));
}

void lowercase(string& str) {
    for (auto c : str)
        printf("%c", tolower(c));
}

int main() {
    string word;
    cin >> word;

    int lower_count = 0, upper_count = 0;
    for (auto c : word) {
        if (islower(c)) lower_count++;
        else upper_count++;
    }

    if (lower_count == upper_count || lower_count > upper_count)
        lowercase(word);
    else
        uppercase(word);

    printf("\n");

    return 0;
}
