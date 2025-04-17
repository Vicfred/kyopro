// vicfred
// https://open.kattis.com/problems/cudoviste
// brute force
import std.stdio;
import std.string;

void main() {
    int R, C;
    readf("%s %s\n", &R, &C);

    string[] parking;

    for(int i = 0; i < R; i++) {
        string S = readln.strip;
        parking ~= S;
    }

    int[] ans = new int[5];
    for(int i = 0; i < R - 1; i++) {
        for(int j = 0; j < C - 1; j++) {
            int[char] count;
            count['.'] = 0;
            count['X'] = 0;
            count['#'] = 0;
            count[parking[i][j]] += 1;
            count[parking[i+1][j]] += 1;
            count[parking[i][j+1]] += 1;
            count[parking[i+1][j+1]] += 1;
            if(count['.'] + count['X'] == 4)
                ans[count['X']] += 1;
        }
    }

    for(int i = 0; i < 5; i++)
        ans[i].writeln;
}

