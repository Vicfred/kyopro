import std.stdio;
import std.array;
import std.algorithm;

void createGrid(int n) {
    char[][] grid;
    grid.length = n + 1;
    foreach (i; 0 .. n + 1) {
        grid[i] = new char[](n + 1);
        grid[i][] = '#';
    }
    
    foreach (i; 1 .. n + 1) {
        int j = n + 1 - i;
        if (i <= j) {
            foreach (k; i .. j + 1) {
                foreach (l; i .. j + 1) {
                    grid[k][l] = (i % 2 == 1) ? '#' : '.';
                }
            }
        }
    }
    
    foreach (i; 1 .. n + 1) {
        writeln(grid[i][1 .. $]);
    }
}

void main() {
    int n;
    readf("%d", &n);
    createGrid(n);
}
