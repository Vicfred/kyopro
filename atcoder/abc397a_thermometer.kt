// vicfred
// https://atcoder.jp/contests/abc397/tasks/abc397_a
// implementation

fun main() {
    val X = readLine()!!.toDouble()
    
    when {
        X >= 38.0 -> println(1)
        X >= 37.5 -> println(2)
        else -> println(3)
    }
}
