package main

import (
	"fmt"
)

func main() {
	var a [3]int // Initializes an array with 3 elements with integer types. All 3 elements are 0.

	var b = [3]int{10, 20, 30} // Initializes an array with 3 elements with integer types and each space is defined.

	var c = [12]int{1, 5: 4, 6, 10: 100, 15} /// Sparse Array, this one is evaluated to [1, 0, 0, 0, 0, 4, 6, 0, 0, 0, 100, 15]

	var d = [...]int{10, 20, 30} // You can also not specify array size

	var x = [...]int{1, 2, 3}

	var y = [3]int{1, 2, 3}

	fmt.Println(a, b, c, d)
	fmt.Println(x == y) // Should evaluate to true

	var e [2][3]int // Multi-dimensional array; 2 arrays of ints of length of 3. Go does not support true matrix.

	fmt.Println(e)

	var f = [1]int{69}

	fmt.Println(f[0]) // Arrays are read/written in bracket syntax.
}
