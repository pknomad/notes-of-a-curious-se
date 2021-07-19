package main

import "fmt"

func main() {
	// fmt.Println prints the passed in variables' values and appends a new line
	cylonModel := 6
	fmt.Println(cylonModel)

	// fmt.Printf is used when you want to print one or multiple values using a defined format specifier
	name := "Caprica-Six"
	aka := fmt.Sprintf("Number %d", 6)
	fmt.Printf("%s is also known as %s", name, aka)
}