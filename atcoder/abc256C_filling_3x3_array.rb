# uninhm
# https://atcoder.jp/contests/abc256/tasks/abc256_c
# semi-brute force

rows, cols = gets.split.map(&:to_i).each_slice(3).to_a

# a b c
# d e f
# g h i
ans = 0
for a in 1 .. 28
  for b in 1 .. 28
    for d in 1 .. 28
      for e in 1 .. 28
        c = rows[0] - a - b
        f = rows[1] - d - e
        g = cols[0] - a - d
        h = cols[1] - b - e
        ih = rows[2] - g - h
        iw = cols[2] - c - f
        ans += 1 if ih == iw and [a, b, c, d, e, f, g, h, iw].min > 0
      end
    end
  end
end
puts ans
