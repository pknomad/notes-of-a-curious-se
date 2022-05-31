package main

import (
	"fmt"
)

func main() {
	fmt.Println("Greetings and\n\"Salutations\"") // Interpreted String Literal

	fmt.Println(`Greetings and "Salutations"`) // Raw String Literal

	var flag bool
	var isAwesome = true

	fmt.Println(flag)
	fmt.Println(isAwesome)
}
