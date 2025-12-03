def is_invalid(x: int) -> bool:
  s = str(x)
  if len(s) < 2:
    return False
  return s in (s + s)[1:-1]

line = input().strip()
ranges = [r for r in line.split(",") if r != ""]
ans = 0

for r in ranges:
  a_str, b_str = r.split("-")
  n = int(a_str)
  m = int(b_str)
  for x in range(n, m + 1):
    if is_invalid(x):
      ans += x

print(ans)
