puts  "Hello! would you like some stale biscuits and tea?"
ans = gets.chomp
while ans != "BYE"
  if ans == ans.upcase
    year = rand(1930..1951)
    puts "NO, NOT SINCE #{year}!"
    ans = gets.chomp
  else
    puts " HUH?!  SPEAK UP, SONNY!"
    ans = gets.chomp
  end
end
