# Vicfred
# https://atcoder.jp/contests/abc397/tasks/abc397_a
# implementation

function main()
    X = parse(Float64, readline())
    
    if X >= 38.0
        println(1)
    elseif X >= 37.5
        println(2)
    else
        println(3)
    end
end

main()
