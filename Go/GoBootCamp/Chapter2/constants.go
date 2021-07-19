package main

import "fmt"

// Declare single constant
const Pi = 3.14

// Declare multiple constants

const (
	Truth = false
	Big   = 1 << 62
	Small = Big >> 61
)

const (
	StatusOk					= 200
	StatusCreated				= 201
	StatusAccepted				= 202
	StatusNonAuthoritativeInfo	= 203
	StatusNoContent				= 204
	StatusResetContent			= 205
	StatusPartialContent		= 206
)

func main() {
	const Greeting = ""
	fmt.Println(Greeting)
	fmt.Println(Pi)
	fmt.Println(Truth)
	fmt.Println(Big)
}