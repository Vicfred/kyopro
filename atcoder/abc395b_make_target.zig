const std = @import("std");

fn createGrid(n: usize, allocator: std.mem.Allocator) !void {
    var grid = try allocator.alloc([]u8, n + 1);
    defer allocator.free(grid);
    
    var i: usize = 0;
    while (i <= n) : (i += 1) {
        grid[i] = try allocator.alloc(u8, n + 1);
        @memset(grid[i].ptr, '#', n + 1);
    }
    
    i = 1;
    while (i <= n) : (i += 1) {
        const j = n + 1 - i;
        if (i <= j) {
            var k: usize = i;
            while (k <= j) : (k += 1) {
                var l: usize = i;
                while (l <= j) : (l += 1) {
                    grid[k][l] = if (i % 2 == 1) '#' else '.';
                }
            }
        }
    }
    
    var stdout = std.io.getStdOut().writer();
    i = 1;
    while (i <= n) : (i += 1) {
        try stdout.print("{s}\n", .{grid[i][1..]});
    }
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    
    var stdin = std.io.getStdIn().reader();
    var buf: [100]u8 = undefined;
    const n = try std.fmt.parseInt(usize, (try stdin.readUntilDelimiterOrEof(&buf, '\n')).? , 10);
    
    try createGrid(n, allocator);
}
