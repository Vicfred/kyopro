// vicfred
// https://atcoder.jp/contests/abc397/tasks/abc397_a
// implementation
package main

import (
	"fmt"
)

func main() {
	var X float64
	fmt.Scan(&X)
	
	if X >= 38.0 {
		fmt.Println(1)
	} else if X >= 37.5 {
		fmt.Println(2)
	} else {
		fmt.Println(3)
	}
}
