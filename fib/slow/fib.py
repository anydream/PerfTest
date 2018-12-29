import time;

def fib(n):
  if n <= 1:
    return n
  else:
    return fib(n - 1) + fib(n - 2)

start = time.perf_counter_ns()
result = fib(42)
elapsed = time.perf_counter_ns() - start

print("python fib(42)=%d, elapsed=%ldms" % (result, elapsed/1000000))