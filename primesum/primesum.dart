main()
{
	var start = new DateTime.now().millisecondsSinceEpoch;
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
	var elapsed = new DateTime.now().millisecondsSinceEpoch - start;
	print("dart primesum(80000)=" + sum.toString() + ", " + elapsed.toString() + "ms");
}