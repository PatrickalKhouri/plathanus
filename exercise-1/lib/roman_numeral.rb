NUMERALS = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
ROMAN_CHARS = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

def transform_to_roman_numeral(an_integer)
  roman = ""
  NUMERALS.each_with_index do |divider, index|
    t = an_integer / divider
    t.times do
      roman.insert(-1, ROMAN_CHARS[index])
    end
    an_integer = an_integer % divider
  end
  return roman
end


