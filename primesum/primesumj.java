public class primesumj
{
	public static void main(String[] args)
	{
		long bt = System.currentTimeMillis();
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

		long dl = System.currentTimeMillis() - bt;
		System.out.format("java(hotspot18.3) primesum(80000)=%d, %dms\n", sum, dl);
	}
}