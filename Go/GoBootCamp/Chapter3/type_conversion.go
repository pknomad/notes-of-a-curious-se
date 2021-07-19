package main

import (
	"fmt"
)

var i int = 42
var f float64 = float64(i)
var u uint = uint(f)

func main() {
	fmt.Printf("%d is %T\n", i, i)
	fmt.Printf("%g is %T\n", f, f)
	fmt.Printf("%d is %T\n", u, u)
}