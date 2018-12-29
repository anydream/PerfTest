#include <stdio.h>
#include <time.h>

int main()
{
	time_t start = clock();

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
	volatile double result = 4 * pi;

	time_t elapsed = clock() - start;
	printf("c++ pi(500000000)=%.10lf, elapsed=%lldms\n", result, elapsed);
	return 0;
}
