# vicfred
# https://atcoder.jp/contests/abc397/tasks/abc397_a
# implementation

# Read input value
con <- file("stdin", "r")
X <- scan(con, what = numeric(), n  = 1)

# Apply the condition logic
if (X >= 38.0) {
  cat("1\n")
} else if (X >= 37.5) {
  cat("2\n")
} else {
  cat("3\n")
}
