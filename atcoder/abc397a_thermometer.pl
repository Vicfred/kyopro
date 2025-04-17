# vicfred
# https://atcoder.jp/contests/abc397/tasks/abc397_a
# implementation

# Read input
my $X = <STDIN>;
chomp($X);  # Remove newline

# Apply condition logic
if ($X >= 38.0) {
    print "1\n";
} elsif ($X >= 37.5) {
    print "2\n";
} else {
    print "3\n";
}
