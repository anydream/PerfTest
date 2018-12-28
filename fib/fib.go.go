package main

import (
	"fmt"
	"time" )

func fib(n int) int {
	if n <= 1 {
		return n;
	}
	return fib(n-1)+fib(n-2);
}

func main() {
	start := time.Now().UnixNano();
	result := fib(42);
	elapsed := time.Now().UnixNano() - start;
	elapsed = elapsed / int64(time.Millisecond);
	fmt.Printf("go fib(42)=%d, elapsed=%dms\n", result, elapsed);
}