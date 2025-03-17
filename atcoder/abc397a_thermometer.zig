const std = @import("std");

pub fn main() !void {
    // Initialize stdin and stdout
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();

    // Read input
    var buf: [100]u8 = undefined;
    const input = if (try stdin.readUntilDelimiterOrEof(&buf, '\n')) |i| i else return;

    // Parse input as float
    const x = try std.fmt.parseFloat(f32, std.mem.trim(u8, input, &std.ascii.whitespace));

    // Apply conditional logic
    if (x >= 38.0) {
        try stdout.print("1\n", .{});
    } else if (x >= 37.5) {
        try stdout.print("2\n", .{});
    } else {
        try stdout.print("3\n", .{});
    }
}
