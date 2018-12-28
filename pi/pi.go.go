package main

import (
	"fmt"
	"time" )

func main() {
	bt := time.Now().UnixNano();

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

	dl := time.Now().UnixNano() - bt;
	dl = dl / int64(time.Millisecond);
	fmt.Printf("go pi(500000000)=%.10f, %dms\n", result, dl);
}
