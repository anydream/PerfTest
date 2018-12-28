package main

import (
	"fmt"
	"time" )

func main() {
	bt := time.Now().UnixNano();
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
	dl := time.Now().UnixNano() - bt;
	dl = dl / int64(time.Millisecond);
	fmt.Println("go primesum(80000)=", sum, "," , dl, "ms");
}