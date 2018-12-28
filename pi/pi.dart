main()
{
	var bt = new DateTime.now().millisecondsSinceEpoch;

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
	double result = 4 * pi;

	var dl = new DateTime.now().millisecondsSinceEpoch - bt;
	print("dart pi(500000000)=" + result.toStringAsFixed(10) + ", " + dl.toString() + "ms");
}
