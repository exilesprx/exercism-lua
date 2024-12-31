local Darts = {}

function Darts.score(x, y)
	local d = x ^ 2 + y ^ 2
	if d > 10 ^ 2 then
		return 0
	elseif d > 5 ^ 2 then
		return 1
	elseif d > 1 ^ 2 then
		return 5
	end

	return 10
end

return Darts
