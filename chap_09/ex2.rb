def roman_numeral int
  arabic_to_roman = [[1000, "M"], [500, "D"], [100, "C"], [50, "L"], [10, "X"], [5, "V"], [1, "I"]]
  arabic_to_roman.each do |x|
    if (int / x.first) > 0
       print x.last * (int / x.first)
       int = int % x.first
    end
  end
  print " "
end


roman_numeral 201
roman_numeral 4
