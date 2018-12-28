#include <stdio.h>
#include <time.h>

int main()
{
	time_t start = clock();
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
	volatile int result = sum;
	time_t elapsed = clock() - start;
	printf("msvc primesum(80000)=%d, elapsed=%lldms\n", result, elapsed);
	return 0;
}
