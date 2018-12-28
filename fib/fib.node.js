'use strict';
function fib(n) 
{
	if (n <= 1)
		return n;
	return fib(n - 1) + fib(n - 2);
}
let start = new Date().getTime();
let result = fib(42);
let elapsed = new Date().getTime() - start;

console.log(`node-v8(${process.version}) fib(42)=${result}, ${elapsed}ms`);