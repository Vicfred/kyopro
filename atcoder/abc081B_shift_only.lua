-- vicfred
-- https://atcoder.jp/contests/abc081/tasks/abc081_b
-- basic math

n = io.read("*n")
A = {}
for i = 1,n do
    A[i] = io.read("*n")
end
minima = 2^64
for i = 1,n do
    times = 0
    while math.fmod(A[i],2) == 0 do
        A[i] = A[i]/2
        times = times + 1
    end
    minima = math.min(minima, times)
end
print(minima)
