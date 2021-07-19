package main

// Importing can be set in a () syntax.
import (
	"fmt"
)

// Variables can be set in a var() syntax.

var (
	// Declared one by one
	name string
	age	int

	// Declared multiple on one type
	city, state, country string

	// Declared via inferrd typing
	school = "Emory University"

	gotName, gotLocation, gotAge = "Prince Oberyn", "Dorne", 32
	)

func main() {
	name = "Jason Kang"
	age = 30
	city = "Hayward"
	state = "California"
	country = "United States"

	// Short assignment with implicit type
	height := 68
	fmt.Println(name, "is", age, "years old and lives in", city, state, country, school, height)

	fmt.Printf("%s (%d) of %s", gotName, gotAge, gotLocation)
}