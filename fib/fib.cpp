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
	time_t bt = clock();
	volatile int result = fib(42);
	time_t dl = clock() - bt;
	printf("msvc fib(42)=%d, %lldms\n", result, dl);
	return 0;
}
