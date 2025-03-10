import std.algorithm;
import std.array;
import std.conv;
import std.stdio;
import std.string;

void main() {
    const long N = readln.chomp.to!long;
    const long[] A = readln.split.map!(to!long).array;
    
    bool valid = true;
    foreach (i; 0 .. N - 1) {
        if (A[i] >= A[i + 1]) {
            valid = false;
            break;
        }
    }
    
    writeln(valid ? "Yes" : "No");
}
