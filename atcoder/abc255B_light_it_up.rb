# uninhm
# https://atcoder.jp/contests/abc255/tasks/abc255_b
# implementation, geometry

def getints
  gets.split.map &:to_i
end

n, k = getints
lights_idx = getints.map &:pred
people = Array.new(n) { getints }
lights = lights_idx.map { |i| people[i] }

max = 0
people.each do |p|
  min = Float::INFINITY
  x1, y1 = p
  lights.each do |l|
    x2, y2 = l
    d = Math.sqrt((x1-x2)**2 + (y1-y2)**2)
    min = d if d < min
  end
  max = min if min > max
end

puts max
