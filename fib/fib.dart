int fib(int n)
{
	if (n <= 1)
		return n;
	return fib(n - 1) + fib(n - 2);
}

main()
{
	var start = new DateTime.now().millisecondsSinceEpoch;
	int result = fib(42);
	var elapsed = new DateTime.now().millisecondsSinceEpoch - start;
	print("dart fib(42)=" + result.toString() + ", " + elapsed.toString() + "ms");
}