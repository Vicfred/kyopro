// vicfred
// https://atcoder.jp/contests/abc159/tasks/abc159_e
// bitmask
import std.algorithm;
import std.stdio;
import std.string;

void main() {
    int h, w, k;
    readf("%s %s %s", &h, &w, &k);
    readln;

    string[] s;
    for(int i = 0; i < h; ++i) {
        string str = readln.chomp;
        s ~= str;
    }

    int ans = h*w;
    for(int mask = 0; mask < (1 << (h-1)); ++mask) {
        int[] groups = new int[h];
        int number_groups = 1;
        for(int i = 0; i < h-1; ++i) {
            if(!(mask & (1 << i))) {
                groups[i+1] = groups[i] + 1;
                number_groups += 1;
            } else {
                groups[i+1] = groups[i];
            }
        }

        int totalline = number_groups - 1;
        int[] whitenum = new int[number_groups];
        bool update = true;
        for(int x = 0; x < w; ++x) {
            bool melapela = true;
            int[] cur = new int[number_groups];
            for(int y = 0; y < h; ++y) {
                cur[groups[y]] += s[y][x] - '0';
                whitenum[groups[y]] += s[y][x] - '0';
                if(cur[groups[y]] > k)
                    update = false;
                if(whitenum[groups[y]] > k)
                    melapela = false;
            }
            if(!melapela) {
                totalline += 1;
                whitenum = cur;
            }
        }
        if(update)
            ans = min(ans, totalline);
    }
    ans.writeln;
}

