class OrangeTree
  def initialize
    @oranges = 0
    @age = 0
  end

  def height
    @trees_height = @age * 10
  end

  def one_year_passes
    @orangeCount = 0
    @age += 1
    count_the_oranges
    puts "The tree is " + @age.to_s + " years old."
  end

  def count_the_oranges
    if @age < 3 or @age > 10
      @orangeCount = 0
    else
      @orangeCount = ((@age - 2) * 3).to_i
    end
    if @age > 12
      puts "The orange tree dies."
      exit
    end
    puts "There are " + @orangeCount.to_s + " oranges."
  end

  def pick_an_orange
      if @orangeCount == 0
        if @age > 2
          puts "You ate them all already. You cute little glutton."
        else
          puts "The tree is too young, no oranges yet."
        end
      else
        @orangeCount -= 1
        puts "Mmmm... Such a juicy orange"
        puts "There are " + @orangeCount.to_s + " left."
      end
    end
end

example = OrangeTree.new



example.one_year_passes
example.pick_an_orange
example.one_year_passes
example.one_year_passes
example.pick_an_orange
example.pick_an_orange
example.pick_an_orange
example.pick_an_orange

example.one_year_passes
example.one_year_passes
example.one_year_passes
example.one_year_passes
example.one_year_passes
example.one_year_passes
example.one_year_passes
example.one_year_passes
example.one_year_passes
example.one_year_passes
example.one_year_passes
example.one_year_passes
example.one_year_passes
