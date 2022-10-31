# uninhm
# https://codeforces.com/contest/1703/problem/E
# implementation

def solve(grid, i, j, n, m)
  return 0 if n == 1
  ans = 0
  (n-1).times do
    ones = 0
    zeros = 0
    4.times do
      if grid[i][j] == '1'
        ones += 1
      else
        zeros += 1
      end
      i, j = j, m-1-i
    end
    ans += [ones, zeros].min
    j += 1
  end
  ans
end

t = gets.to_i

t.times do
  n = gets.to_i
  a = Array.new(n) { gets.chomp }
  ans = 0
  ((n+1)/2).times do |i|
    ans += solve(a, i, i, n-2*i, n)
  end
  puts ans
end
