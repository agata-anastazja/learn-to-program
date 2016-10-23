words = []
word = gets.chomp

while word != ""
  words.push word
  word = gets.chomp
end

print words.sort_by {|w| w.downcase}
