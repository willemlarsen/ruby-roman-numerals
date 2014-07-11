def convert(in_arabic)
	return "" if in_arabic.zero?
	arabic, roman = conversion_factors(in_arabic)
	roman + convert(in_arabic - arabic)
end

def conversion_factors(in_arabic)
	[ [5, "V"], [1, "I"] ].find { |arabic_n, _| arabic_n <= in_arabic }
end

