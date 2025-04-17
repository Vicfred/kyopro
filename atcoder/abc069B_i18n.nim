# vicfred
# https://atcoder.jp/contests/abc069/tasks/abc069_b
# string manipulation
import strutils

let s = stdin.readLine.strip
echo s[0]&($(s.len-2))&s[^1]
