package main

import (
    "fmt"
)

func main() {
    cards := []string{newCard(), newCard()}
    cards = append(cards, "Six of Spades")

    for i, cards := range cards {
        fmt.Println(i, cards)
    }
}

func newCard() string {
    return "Five of Diamonds"
}