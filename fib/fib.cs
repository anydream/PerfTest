using System;

namespace testNetCore
{
	public class Program
	{
		private static int fib(int n)
		{
			if (n <= 1)
				return n;
			return fib(n - 1) + fib(n - 2);
		}

		private static void Main(string[] args)
		{
			int start = Environment.TickCount;
			int result = fib(42);
			int elapsed = Environment.TickCount - start;
			Console.WriteLine("c# fib(42)={0}, {1}ms", result, elapsed);
		}
	}
}