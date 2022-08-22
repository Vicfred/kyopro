# uninhm
# https://codeforces.com/contest/1419/problem/D2
# greedy

n = gets.to_i

if n < 3
  puts 0
  puts gets
  exit
end

a = gets.split.map &:to_i

head, tail, rest = a.sort.each_slice(n/2).to_a
a = tail.zip(head).flatten + (rest || [])

puts a.each_cons(3).count { |(a, b, c)| a > b and b < c }
puts a.join ' '
