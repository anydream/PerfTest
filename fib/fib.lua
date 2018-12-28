function fib(n) 
	if n <= 1 then
		return n;
	end
	return fib(n - 1) + fib(n - 2);
end

local start = os.clock();
local result = fib(42);
local elapsed = os.clock();

print("lua fib(42)=" .. result .. ", " .. elapsed*1000 .. "ms");
