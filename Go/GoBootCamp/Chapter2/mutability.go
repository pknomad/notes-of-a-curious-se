package main

import (
	"fmt"
)

// Only constants are immutable in Go. Original values will also not be mutated when being passed in arguments/functions.

func main() {
	me := Artist{Name: "Matt", Genre: "Electro", Songs: 42}
	fmt.Printf("%s released their %dth song\n", me.Name, newRelease(me))
	fmt.Printf("%s has a total of %d songs", me.Name, me.Songs)
}

type Artist struct {
	Name, Genre string
	Songs		int
}

func newRelease (a Artist) int {
	a.Songs++
	return a.Songs
}