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
	bt := time.Now().UnixNano();
	result := fib(42);
	dl := time.Now().UnixNano() - bt;
	dl = dl / int64(time.Millisecond);
	fmt.Println("go fib(42)=", result, "," , dl, "ms");
}