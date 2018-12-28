package main

import (
	"fmt"
	"time" )

func main() {
	start := time.Now().UnixNano();
	var sum int = 0;
	for i := 2; i <= 80000; i+=1 {
		for n := 2; n <= i; n+=1 {
			if i % n == 0 {
				if i == n {
					sum += i;
				}
				break;
			}
		}
	}
	elapsed := time.Now().UnixNano() - start;
	elapsed = elapsed / int64(time.Millisecond);
	fmt.Printf("go primesum(80000)=%d, elapsed=%dms\n", sum, elapsed);
}