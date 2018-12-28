let start = new Date().getTime();

	let s = 1;
	let pi = 0;
	let i = 1.0;
	let n = 1.0;
	for (let x = 0; x < 500000000; ++x)
	{
		pi += i;
		n = n + 2;
		s = -s;
		i = s / n;
	}
	let result = 4 * pi;

let elapsed = new Date().getTime() - start;
print("js pi(500000000)=" + result.toFixed(10) + ", elapsed=" + elapsed + "ms");
