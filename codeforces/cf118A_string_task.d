// https://codeforces.com/problemset/problem/118/A
// basic string manipulation
import std.algorithm;
import std.stdio;
import std.string;

bool is_vowel(dchar c) {
    return c=='a'||c=='o'||c=='y'||c=='e'||c=='u'||c=='i';
}

void main() {
    auto word = readln.chomp.toLower;

    auto filtered = word.filter!(x => !is_vowel(x));

    foreach(x; filtered)
        write(".", x);
    writeln;
}

