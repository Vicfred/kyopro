// Vicfred
// https://atcoder.jp/contests/abc397/tasks/abc397_a
// implementation
object Main {
  def main(args: Array[String]): Unit = {
    val X = scala.io.StdIn.readDouble()
    
    if (X >= 38.0) {
      println(1)
    } else if (X >= 37.5) {
      println(2)
    } else {
      println(3)
    }
  }
}
