# uninhm
# https://atcoder.jp/contests/abc258/tasks/abc258_a
# implementation

k = gets.to_i

puts (Time.new(hour=21, in: '+00:00') + k*60).strftime "%H:%M"
