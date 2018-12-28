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
		long bt = System.currentTimeMillis();
		result = fib(42);
		long dl = System.currentTimeMillis() - bt;
		System.out.format("java fib(42)=%d, %dms\n", result, dl);
	}
}