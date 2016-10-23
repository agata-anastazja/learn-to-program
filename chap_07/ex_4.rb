puts "Give me a starting year"
start = gets.chomp
puts "... and an ending"
ends = gets.chomp
year = start

while year <= ending
  if year%4 == 0
    if year%100 != 0 || year%400 == 0
      puts year
    end
  end
  year = year + 1
end
