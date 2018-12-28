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
			int bt = Environment.TickCount;
			int result = fib(42);
			int dl = Environment.TickCount - bt;
			Console.WriteLine("c# fib(42)={0}, {1}ms", result, dl);
		}
	}
}