puts  "Hello! would you like some stale biscuits and tea?"
correct_ans = 0
while  correct_ans !=3 #bye hits 3 ask again
  puts "tell me a story"
  ans = gets.chomp
  if ans == "BYE"
    correct_ans +=1
  elsif ans == ans.upcase
      year = rand(1930..1951)
      puts "NO, NOT SINCE #{year}!"
      ans = gets.chomp
      correct_ans = 0
  else
      puts " HUH?!  SPEAK UP, SONNY!"
      ans = gets.chomp
      correct_ans = 0

  end
end
