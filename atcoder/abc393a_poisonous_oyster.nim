# Vicfred
# https://atcoder.jp/contests/abc393/tasks/abc393_a
# implementation

import strutils

# Read a single line with two words
let input = stdin.readLine()

# Split input into two words
let words = input.split(" ")

if words.len == 2:
    let (s1, s2) = (words[0], words[1])
    # Check conditions and print corresponding values
    if s1 == "fine" and s2 == "fine":
        echo 4
    elif s1 == "fine" and s2 == "sick":
        echo 3
    elif s1 == "sick" and s2 == "fine":
        echo 2
    elif s1 == "sick" and s2 == "sick":
        echo 1
    else:
        echo "Invalid input"
else:
    echo "Invalid input"
