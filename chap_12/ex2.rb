# October 7 1983
#Happy Birthday! Ask what year a person was born in, then the month, then the day.
 #Figure out how old they are and give them a big SPANK! for each birthday they have had.

 puts "What year you were born in?"
 year = gets.chomp
 puts "What month you were born in?(number)"
 month = gets.chomp
 puts "What day you were born in?"
 day = gets.chomp

days = 0
days = Time.new.day - Time.mktime(year, month, day).day

months = 0
months = Time.new.month - Time.mktime(year, month, day).month


years = Time.new.year - Time.mktime(year, month, day).year

if (months < 0) || (months == 0 && days < 0)
  age = years - 1
else
  age = years
end

puts "You are #{age} years old."
age.times {|i| print "SPANK! "}
