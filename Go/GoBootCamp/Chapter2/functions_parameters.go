package main

import (
	"fmt"
)

func main() {
	name := "Matt"
	continent := location("LA")
	fmt.Printf("%s lives in %s", name, continent)
}

func location(city string) (continent string) {
	switch city {
	case "New York", "LA", "Chicago":
		continent = "North America"
	default:
		continent = "Unknown"
	}
	return
}