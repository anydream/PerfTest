function fib(n) 
{
	if (n <= 1)
		return n;
	return fib(n - 1) + fib(n - 2);
}
let bt = new Date().getTime();
let result = fib(42);
let dl = new Date().getTime() - bt;

print("js fib(42)=" + result + ", " + dl + "ms");
