int fib(int n)
{
	if (n <= 1)
		return n;
	return fib(n - 1) + fib(n - 2);
}

main()
{
	var bt = new DateTime.now().millisecondsSinceEpoch;
	int result = fib(42);
	var dl = new DateTime.now().millisecondsSinceEpoch - bt;
	print("dart fib(42)=" + result.toString() + ", " + dl.toString() + "ms");
}