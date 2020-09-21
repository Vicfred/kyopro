-- Vicfred
-- https://atcoder.jp/contests/abc178/tasks/abc178_c
-- math

function binpow(a, b, m)
    a = a % m
    res = 1
    while b > 0 do
        if (b % 2) == 1 then
            res = (res * a) % m
        end
        a = (a * a) % m
        b = b // 2
    end

    return res
end

mod = 1000000007

n = io.read("*n")

ans = binpow(10, n, mod) - binpow(9, n, mod) - binpow(9, n, mod) + binpow(8, n, mod)
ans = ans + mod
ans = ans % mod
print(ans)

