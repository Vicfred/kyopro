# uninhm
# https://atcoder.jp/contests/abc368/tasks/abc368_a
# implementation

n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

(0...n).each do |i|
  print a[(n + i - k) % n], ' '
end
