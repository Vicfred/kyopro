# uninhm
# https://codeforces.com/contest/1703/problem/B
# set, implementation

require 'set'

t = gets.to_i

t.times do
  gets
  ln = gets.chomp
  s = Set.new
  b = 0
  ln.each_char do |c|
    b += 1 if not s.include? c
    s << c
    b += 1
  end
  puts b
end
