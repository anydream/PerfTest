function fib(n) 
	if n <= 1 then
		return n;
	end
	return fib(n - 1) + fib(n - 2);
end

local bt = os.clock();
local result = fib(42);
local dl = os.clock();

print("lua fib(42)=" .. result .. ", " .. dl*1000 .. "ms");
