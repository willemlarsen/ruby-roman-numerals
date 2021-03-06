require "rspec"
require "roman_numerals"

describe "Converting arabic numbers to roman numerals" do
	context "Romans didn't have a 0" do
		it "converts 0 to a blank string" do
			expect(convert(0)).to eq("")
		end
	end

	{ 1 => "I",
	  2 => "II",
	  4 => "IV",
	  5 => "V",
	  6 => "VI",
	  9 => "IX",
	  10 => "X",
	  40 => "XL",
	  50  => "L",
	  90 => "XC",
	  100 => "C",
	  400 => "CD",
	  500 => "D",
	  900 => "CM",
	  1000 => "M",
	  3497 => "MMMCDXCVII"
	  }.each_pair do |arabic, roman|
	  	it "converts #{arabic} number to #{roman} numeral" do
	  	expect(convert(arabic)).to eq(roman)
	  end
	end
end
