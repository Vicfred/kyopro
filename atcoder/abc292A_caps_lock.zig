// Vicfred
// https://atcoder.jp/contests/abc292/tasks/abc292_a
// implementation, string manipulation
const std = @import("std");

const stdout = std.io.getStdOut();
const stdin = std.io.getStdIn();
const reader = stdin.reader();
const writer = stdout.writer();

pub fn main() !void {
    var buffer: [1024]u8 = undefined;
    var line = (try reader.readUntilDelimiterOrEof(&buffer, '\n')).?;
    for (line) |ch| {
        try writer.print("{c}", .{ch - 32});
    }
    try writer.print("\n", .{});
}
