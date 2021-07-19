// You need to define a main package and a main() function
package main

import (
	"fmt"
	"math/rand"
)

// You can manually pull the code yourself using go get github.com/mattetii/goRailsYourself/crypto
import "github.com/mattetti/goRailsYourself/crypto"

func main() {
	fmt.Println()
	rand.Int()
}

// bin folder contains the Go compiled libraries
// pkg folder contains the compiled versions of the available libraries
// src folder contains all the Go source code organized by import path