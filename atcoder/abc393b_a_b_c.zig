// Vicfred
// https://atcoder.jp/contests/abc393/tasks/abc393_a
// implementation

const std = @import("std");

fn countABCTriplets(s: []const u8) u32 {
    var triples: u32 = 0;
    const n = s.len;
    for (0..n) |i| {
        for (i + 1..n) |j| {
            for (j + 1..n) |k| {
                if (j - i != k - j) {
                    continue;
                }
                if (s[i] == 'A' and s[j] == 'B' and s[k] == 'C') {
                    triples += 1;
                }
            }
        }
    }
    return triples;
}

pub fn main() !void {
    var buffer: [100]u8 = undefined;
    const stdin = std.io.getStdIn();
    const line = try stdin.reader().readUntilDelimiterOrEof(&buffer, '\n');

    if (line) |input| {
        const trimmed = std.mem.trim(u8, input, " \t\n");
        std.debug.print("{}\n", .{countABCTriplets(trimmed)});
    } else {
        std.debug.print("Invalid input\n", .{});
    }
}
