def convert(in_arabic)
	return "" if in_arabic.zero?
	arabic, roman = convert_arabic_to_roman(in_arabic)
	roman + convert(in_arabic - arabic)
end

def convert_arabic_to_roman(in_arabic)
	[ [5, "V"], [1, "I"] ].find { |arabic_n, _| arabic_n <= in_arabic }
end

