package main

import (
	"fmt"
)

func main() {
	// Untyped Constant
	const x = 10

	// Legal Expression
	var y int = x
	var z float64 = x
	var d byte = x

	// Typed Constant
	const typedX int = 10

	fmt.Println(x, y, z, d, typedX)
}
