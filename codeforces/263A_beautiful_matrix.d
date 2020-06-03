// https://codeforces.com/problemset/problem/263/A
// implementation
import std.stdio;
import std.math;

void main() {
    int[5][5] matrix;
    foreach(i; 0..5) {
        foreach(j; 0..5) {
            scanf("%d", &matrix[i][j]);
        }
    }
    int answer = 0;
    foreach(i; 0..5) {
        foreach(j; 0..5) {
            if(matrix[i][j] == 1)
                answer = abs(i-2)+abs(j-2);
        }
    }
    answer.writeln;
}

