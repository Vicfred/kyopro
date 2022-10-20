# uninhm
# https://atcoder.jp/contests/abc261/tasks/abc261_b
# implementation

n = gets.not_nil!.to_i

a = Array.new(n) { gets.not_nil! }

(0...n).each do |i|
  (0...i).each do |j|
    if a[i][j] == 'W' && a[j][i] != 'L' ||
      a[i][j] == 'D' && a[j][i] != 'D' ||
      a[i][j] == 'L' && a[j][i] != 'W'
      puts "incorrect"
      exit
    end
  end
end
puts "correct"
