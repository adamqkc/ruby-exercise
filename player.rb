class Player
  attr_reader :name, :message
  attr_accessor :life, :score

  def initialize(name)
    @name = name
    @life = 3
    @score = 0
    @message = "#{@name} is ready!"
  end

  def decreaseLife
    @life -= 1
  end

  def increaseScore
    @score += 1
  end

  def displayStats
    puts "#{@name} life: #{@life}, score: #{score}"
  end
end