let start = new Date().getTime();
let sum = 0;
for (let i = 2; i <= 80000; ++i)
{
	for (let n = 2; n <= i; ++n)
	{
		if (i % n == 0)
		{
			if (i == n)
				sum += i;
			break;
		}
	}
}
let elapsed = new Date().getTime() - start;
print("js primesum(80000)=" + sum + ", elapsed=" + elapsed + "ms");
