// andrea denisse
// https://atcoder.jp/contests/abc147/tasks/abc147_b
// category: string manipulation

package main

import (
	"fmt"
)

func main() {
	var word string
	fmt.Scan(&word)
	palindromeHugger(word)
}

func palindromeHugger(word string) {
	var incidences int
	wordLenght := len(word) - 1

	for i, letter := range word {
		if letter != rune(word[wordLenght-i]) {
			incidences++
		}
	}

	fmt.Println(incidences / 2)
}
