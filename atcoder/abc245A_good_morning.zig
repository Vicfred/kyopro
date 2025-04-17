// vicfred
// https://atcoder.jp/contests/abc245/tasks/abc245_a
// implementation
const std = @import("std");

fn read_int() !i64 {
    const stdin = std.io.getStdIn().reader();

    var buf: [10]u8 = undefined;
    if (try stdin.readUntilDelimiterOrEof(buf[0..], ' ')) |user_input| {
        return std.fmt.parseInt(i64, user_input, 10);
    } else {
        return @as(i64, 0);
    }
}

fn read_int_final() !i64 {
    const stdin = std.io.getStdIn().reader();

    var buf: [10]u8 = undefined;
    if (try stdin.readUntilDelimiterOrEof(buf[0..], '\n')) |user_input| {
        return std.fmt.parseInt(i64, user_input, 10);
    } else {
        return @as(i64, 0);
    }
}

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    const A = try read_int();
    const B = try read_int();
    const C = try read_int();
    const D = try read_int_final();
    if (A < C) {
        try stdout.print("Takahashi\n", .{});
    } else if (C < A) {
        try stdout.print("Aoki\n", .{});
    } else {
        if (B <= D) {
            try stdout.print("Takahashi\n", .{});
        } else {
            try stdout.print("Aoki\n", .{});
        }
    }
}
