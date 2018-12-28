using System;

namespace testNetCore
{
	public class Program
	{
		private static double result;

		private static void Main(string[] args)
		{
			int start = Environment.TickCount;

			double s = 1;
			double pi = 0;
			double i = 1.0;
			double n = 1.0;
			for (int x = 0; x < 500000000; ++x)
			{
				pi += i;
				n = n + 2;
				s = -s;
				i = s / n;
			}

			result = 4 * pi;

			int elapsed = Environment.TickCount - start;
			Console.WriteLine("c# pi(500000000)={0:0.0000000000}, {1}ms", result, elapsed);
		}
	}
}