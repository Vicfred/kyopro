# uninhm
# https://atcoder.jp/contests/abc260/tasks/abc260_a
# implementation

c = gets.strip.chars.tally

for k, v in c
  if v == 1
    puts k
    exit
  end
end
puts -1
