// vicfred
// https://atcoder.jp/contests/abc157/tasks/abc157_c
// implementation
import std.stdio;
import std.algorithm;

int[] digits(int n) {
    int[] ans;
    while(n > 0) {
        ans ~= n%10;
        n /= 10;
    }
    reverse(ans);
    return ans;
}

void main() {
    int n, m;
    readf("%s %s", &n, &m);
    readln;

    int[int] value;
    bool impossible = false;
    foreach(_; 0..m) {
        int s, c;
        readf("%s %s\n", &s, &c);
        if(s in value && value[s] != c)
            impossible = true;
        else
            value[s] = c;
    }

    if(1 in value && value[1] == 0 && n > 1)
        impossible = true;

    if(impossible) {
        "-1".writeln;
        return;
    }

    if(n == 1 && m == 0) {
        0.writeln;
        return;
    }

    if(n == 1 && m == 0) {
        0.writeln;
        return;
    }

    if(n == 1 && m == 1 && 1 in value && value[1] == 0) {
        0.writeln;
        return;
    }

    for(int num = 10^^(n-1); num < 10^^n; ++num) {
        int[] digit = 0~digits(num);
        bool valid = true;
        for(int i = 1; i <= n; ++i) {
            if(i in value && value[i] != digit[i])
                valid = false;
        }
        if(valid) {
            num.writeln;
            return;
        }
    }
    "-1".writeln;
}

