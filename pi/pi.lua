local start = os.clock();

	local s = 1;
	local pi = 0;
	local i = 1.0;
	local n = 1.0;
	for x = 0, 500000000, 1 do
		pi = pi + i;
		n = n + 2;
		s = -s;
		i = s / n;
	end
	local result = 4 * pi;

local elapsed = os.clock();
print(string.format("lua pi(500000000)=%.10f, %fms\n", result, elapsed*1000));
