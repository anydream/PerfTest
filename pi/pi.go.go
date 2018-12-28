package main

import (
	"fmt"
	"time" )

func main() {
	start := time.Now().UnixNano();

	var s float64 = 1;
	var pi float64 = 0;
	var i float64 = 1.0;
	var n float64 = 1.0;
	for x := 0; x < 500000000; x+=1 {
		pi += i;
		n = n + 2;
		s = -s;
		i = s / n;
	}
	var result float64 = 4 * pi;

	elapsed := time.Now().UnixNano() - start;
	elapsed = elapsed / int64(time.Millisecond);
	fmt.Printf("go pi(500000000)=%.10f, elapsed=%dms\n", result, elapsed);
}
