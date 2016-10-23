class Die
  def initialize
    roll
  end

  def roll
    @numberShowing = 1 + rand(6)
  end

  def showing
    @numberShowing
  end

  def cheat
    puts "Which number you want to see on the dice between 1-6?"
    @numberShowing = gets.chomp.to_i
    if (1..6).include?(@numberShowing)
      showing
    else
      puts "There is no such number on the die! try again"
      Die.new.cheat
    end
  end


end

puts Die.new.showing
puts Die.new.cheat
