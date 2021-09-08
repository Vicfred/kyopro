import std.stdio;

void main ()
{
  string s, t;
  readf("%s %s\n", &s, &t);
  if (s < t)
    writeln("Yes");
  else
    writeln("No");
}
