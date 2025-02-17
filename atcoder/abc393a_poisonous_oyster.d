// Vicfred
// https://atcoder.jp/contests/abc393/tasks/abc393_a
// implementation
import std.stdio;
import std.string;
import std.array;

void main() {
    // Read a single line with two words
    string input = readln().strip;
    
    // Split input into two words and trim whitespace
    string[] words = input.strip.split(" ");
    string s1 = words[0];
    string s2 = words[1];
    
    // Check conditions and print corresponding values
    if (s1 == "fine" && s2 == "fine") {
        writeln("4");
    } else if (s1 == "fine" && s2 == "sick") {
        writeln("3");
    } else if (s1 == "sick" && s2 == "fine") {
        writeln("2");
    } else if (s1 == "sick" && s2 == "sick") {
        writeln("1");
    }
}
