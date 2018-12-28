public class fibj
{
	private static int fib(int n)
	{
		if (n <= 1)
			return n;
		return fib(n - 1) + fib(n - 2);
	}
	
	private static volatile int result;

	public static void main(String[] args)
	{
		long start = System.currentTimeMillis();
		result = fib(42);
		long elapsed = System.currentTimeMillis() - start;
		System.out.format("java fib(42)=%d, %dms\n", result, elapsed);
	}
}