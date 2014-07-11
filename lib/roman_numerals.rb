CONVERSIONS =
	[[1000, "M"],
	 [500, "D"],
	 [100, "C"],
	 [50, "L"],
	 [10, "X"],
     [5, "V"],
     [4, "IV"],
     [1, "I"]
     ]

def convert(in_arabic)
	return "" if in_arabic.zero?
	arabic, roman = conversion_factors(in_arabic)
	roman + convert(in_arabic - arabic)
end

def conversion_factors(in_arabic)
	CONVERSIONS.find { |arabic_n, _| arabic_n <= in_arabic }
end

