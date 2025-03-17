import std.stdio;
import std.conv;
import std.string;

void main()
{
    // Read input from stdin and convert to float
    string input = readln().strip();
    float x = to!float(input);
    
    // Apply conditional logic
    if (x >= 38.0)
    {
        writeln(1);
    }
    else if (x >= 37.5)
    {
        writeln(2);
    }
    else
    {
        writeln(3);
    }
}
