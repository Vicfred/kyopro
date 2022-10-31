# uninhm
# https://codeforces.com/contest/1703/problem/D
# implementation, set

require 'set'

t = gets.to_i

t.times do
  n = gets.to_i
  a = Array.new(n) { gets.chomp }
  s = a.to_set
  ans = ""
  a.each do |x|
    flag = false
    (1 ... x.size).each do |l|
      if s.include? x[0, l] and s.include? x[l .. -1]
        ans << "1"
        flag = true
        break
      end
    end
    ans << "0" if not flag
  end
  puts ans
end
