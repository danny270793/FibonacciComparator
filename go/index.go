package main

import (
	"fmt"
	"os"
	"strconv"
)

func fibonacci(n int) int {
	if n <= 1 {
		return n
	} else {
		return fibonacci(n-1) + fibonacci(n-2)
	}
}

func main() {
	argument := os.Args[1]
	number, err := strconv.Atoi(argument)
	if err != nil {
		panic(err)
	}

	result := fibonacci(number)
	fmt.Printf("Fibonacci(%d): %d\n", number, result)
}
