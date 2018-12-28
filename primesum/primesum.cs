using System;

namespace testNetCore
{
	public class Program
	{
		private static void Main(string[] args)
		{
			int start = Environment.TickCount;
			int sum = 0;
			for (int i = 2; i <= 80000; ++i)
			{
				for (int n = 2; n <= i; ++n)
				{
					if (i % n == 0)
					{
						if (i == n)
							sum += i;
						break;
					}
				}
			}

			int elapsed = Environment.TickCount - start;
			Console.WriteLine("c# primesum(80000)={0}, elapsed={1}ms", sum, elapsed);
		}
	}
}