# uninhm
# https://codeforces.com/contest/1703/problem/C
# implementation

t = gets.to_i

t.times do
  n = gets.to_i
  a = gets.split.map &:to_i
  n.times do |i|
    b = gets.chomp
    a[i] = (a[i] + b.count('D') - b.count('U')) % 10
  end
  puts a*' '
end
