package main

import (
    "fmt"
)

func main() {
    // var card string = "Ace of Spades"
    // card := "Ace of Spaces" # Equivalent of line 8
    card := newCard()
    fmt.Println(card)
}

func newCard() string {
    return "Five of Diamonds"
}