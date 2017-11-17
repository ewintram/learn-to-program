# Die

class Die

  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat
    @number_showing = gets.chomp.to_i
    until @number_showing.between?(1,6)
      @number_showing = gets.chomp.to_i
    end
  end

end
