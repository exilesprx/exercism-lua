local resistors = {
	black = 0,
	brown = 1,
	red = 2,
	orange = 3,
	yellow = 4,
	green = 5,
	blue = 6,
	violet = 7,
	grey = 8,
	white = 9,
}

return {
	decode = function(c1, c2, c3)
		local ohms = 10 ^ resistors[c3]
		local resistor_ohms = (10 * resistors[c1] + resistors[c2]) * ohms

		if resistor_ohms >= 1e9 then
			return resistor_ohms / 1e9, "gigaohms"
		elseif resistor_ohms >= 1e6 then
			return resistor_ohms / 1e6, "megaohms"
		elseif resistor_ohms >= 1e3 then
			return resistor_ohms / 1e3, "kiloohms"
		end

		return resistor_ohms, "ohms"
	end,
}
