local start = os.clock();
local sum = 0;
for i = 2, 80000, 1 do
	for n = 2, i, 1 do
		if i % n == 0 then
			if i == n then
				sum = sum + i;
			end
			break;
		end
	end
end
local elapsed = os.clock();
print("lua primesum(80000)=" .. sum .. ", elapsed=" .. elapsed*1000 .. "ms");
