import time;


start = time.perf_counter_ns()

s = 1
pi = 0
i = 1.0
n = 1.0
for x in range(0, 500000000):
	pi += i
	n = n + 2
	s = -s
	i = s / n
result = 4 * pi

elapsed = time.perf_counter_ns() - start
print("python pi(500000000)=%.10lf, elapsed=%ldms" % (result, elapsed/1000000))