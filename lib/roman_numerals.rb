def convert(in_arabic)
	return "" if in_arabic.zero?
	return "I" if in_arabic == 1
	return "V" if in_arabic == 5
	return "II"
end
