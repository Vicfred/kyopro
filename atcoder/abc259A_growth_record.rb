# uninhm
# https://atcoder.jp/contests/abc259/tasks/abc259_a
# implementation

n, m, x, t, d = gets.split.map &:to_i

puts t - d * [0, x-m].max
