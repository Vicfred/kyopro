// Vicfred
// https://atcoder.jp/contests/abc294/tasks/abc294_a
// implementation
const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut();
    const stdin = std.io.getStdIn();
    const reader = stdin.reader();
    const writer = stdout.writer();

    var buffer: [1024]u8 = undefined;
    var line = (try reader.readUntilDelimiterOrEof(&buffer, '\n')).?;

    line = (try reader.readUntilDelimiterOrEof(&buffer, '\n')).?;

    var it = std.mem.tokenize(u8, line, " ");
    while (it.next()) |num| {
        const n = try std.fmt.parseInt(u32, num, 10);
        if (n % 2 == 0) {
            try writer.print("{d} ", .{n});
        }
    }
    try writer.print("\n", .{});
}
