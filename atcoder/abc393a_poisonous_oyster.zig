// vicfred
// https://atcoder.jp/contests/abc393/tasks/abc393_a
// implementation

const std = @import("std");

pub fn main() !void {
    var buf: [100]u8 = undefined;
    var stdin = std.io.getStdIn().reader();
    
    // Read a single line with two words
    const input = try stdin.readUntilDelimiterOrEof(&buf, '\n');
    if (input == null) {
        std.debug.print("Invalid input\n", .{});
        return;
    }
    
    var it = std.mem.split(u8, input.?, " ");
    const s1 = it.next() orelse "";
    const s2 = it.next() orelse "";
    
    // Check conditions and print corresponding values
    if (std.mem.eql(u8, s1, "fine") and std.mem.eql(u8, s2, "fine")) {
        std.debug.print("4\n", .{});
    } else if (std.mem.eql(u8, s1, "fine") and std.mem.eql(u8, s2, "sick")) {
        std.debug.print("3\n", .{});
    } else if (std.mem.eql(u8, s1, "sick") and std.mem.eql(u8, s2, "fine")) {
        std.debug.print("2\n", .{});
    } else if (std.mem.eql(u8, s1, "sick") and std.mem.eql(u8, s2, "sick")) {
        std.debug.print("1\n", .{});
    } else {
        std.debug.print("Invalid input\n", .{});
    }
}
