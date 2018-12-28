public class pij
{
	private static volatile double result;
	
	public static void main(String[] args)
	{
		long start = System.currentTimeMillis();
	
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

		long elapsed = System.currentTimeMillis() - start;
		System.out.format("java pi(500000000)=%.10f, %dms\n", result, elapsed);
	}
}