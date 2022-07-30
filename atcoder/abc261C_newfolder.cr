# uninhm
# https://atcoder.jp/contests/abc261/tasks/abc261_c
# implementation

n = gets.not_nil!.to_i
c = Hash(String, Int32).new

n.times do
  s = gets.not_nil!
  puts c[s]? ? "#{s}(#{c[s]})" : s
  c[s] ||= 0
  c[s] += 1
end
