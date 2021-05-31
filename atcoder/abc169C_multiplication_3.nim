# uninhm
# https://atcoder.jp/contests/abc169/tasks/abc169_c
# implementation

from strutils import split, parseInt
from sequtils import map

var A = stdin.readLine.split({' ','.'}).map(parseInt)
echo A[0] * (A[1] * 100 + A[2]) div 100
