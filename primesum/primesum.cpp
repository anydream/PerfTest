#include <stdio.h>
#include <time.h>

int main()
{
	time_t bt = clock();
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
	time_t dl = clock() - bt;
	printf("msvc(19.16.27024.1) primesum(80000)=%d, %lldms\n", result, dl);
	return 0;
}
