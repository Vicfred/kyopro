// vicfred
// https://atcoder.jp/contests/abc051/tasks/abc051_b
// simulation
import std.stdio;

void main() {
    int k, s;
    readf("%s %s\n", &k, &s);
    
    int answer = 0;
    for(int x = 0; x <= k; ++x) {
        for(int y = 0; y <= k; ++y) {
            int z = s - x - y;
            if(z >= 0 && z <= k)
                answer += 1;
        }
    }

    answer.writeln;
}

