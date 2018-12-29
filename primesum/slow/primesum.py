import time;


start = time.perf_counter_ns()

sum = 0
for i in range(2, 80001):
	for n in range(2, i+1):
		if i % n == 0:
			if i == n:
				sum += i
			break

elapsed = time.perf_counter_ns() - start
print("python primesum(80000)=%d, elapsed=%ldms" % (sum, elapsed/1000000))