using System;

namespace testNetCore
{
	public class Program
	{
		private static void Main(string[] args)
		{
			int bt = Environment.TickCount;
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

			int dl = Environment.TickCount - bt;
			Console.WriteLine("c# primesum(80000)={0}, {1}ms", sum, dl);
		}
	}
}