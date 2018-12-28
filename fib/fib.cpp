#include <stdio.h>
#include <time.h>

int fib(int n)
{
	if (n <= 1)
		return n;
	return fib(n - 1) + fib(n - 2);
}

int main()
{
	time_t start = clock();
	volatile int result = fib(42);
	time_t elapsed = clock() - start;
	printf("msvc fib(42)=%d, elapsed=%lldms\n", result, elapsed);
	return 0;
}
