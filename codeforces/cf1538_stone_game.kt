// uninhm
// https://codeforces.com/contest/1538/problem/A
// implementation

fun main() {
	val t = readLine()!!.toInt()
	for (k in 1..t) {
		val n = readLine()!!.toInt()
		var a = readLine()!!.split(" ").map{ x -> x.toInt() }
		val b = a.indexOf(1)
		val c = a.indexOf(n)

		val x = minOf(b, c) + 1
		val y = maxOf(b, c) + 1
		println(minOf(y, x+n-y+1, n-x+1))
	}
}
