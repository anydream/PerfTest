'use strict';
let bt = new Date().getTime();
let sum = 0;
for (let i = 2; i <= 80000; ++i)
{
	for (let n = 2; n <= i; ++n)
	{
		if (i % n == 0)
		{
			if (i == n)
				sum += i;
			break;
		}
	}
}
let dl = new Date().getTime() - bt;
console.log(`node-v8(${process.version}) primesum(80000)=${sum}, ${dl}ms`);