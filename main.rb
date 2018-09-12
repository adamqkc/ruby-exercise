require ('./player.rb')
require ('./question.rb')

# function to simulate game load
def simulateGameLoad
  i = 3
  sleep(0.5)
  while i > 0 do
    i -= 1
    print '.'
    sleep(0.5)
  end
end

# Initialize game 
player1 = Player.new('PLAYER 1')
player2 = Player.new('PLAYER 2')
new_question = Question.new
currentPlayer = player1

print player1.message
puts simulateGameLoad
print player2.message
puts simulateGameLoad
sleep(1)

puts ''
puts "### START GAME ###"
puts ''

sleep(1)

# Run game loop
while (player1.life > 0 && player2.life > 0) do
  questionType = ['addition', 'subtraction', 'multiplication', 'division'][rand(4)]

  case questionType
  when 'addition'
    new_question.addition
  when 'subtraction'
    new_question.subtraction 
  when 'multiplication'
    new_question.multiplication
  when 'division'
    new_question.division
  end
  
  puts currentPlayer.name
  puts new_question.question
  
  print '>'
  answer = gets.to_i
  
  if answer == new_question.answer 
    puts simulateGameLoad
    puts "Correct!"
    currentPlayer.increaseScore
    currentPlayer.displayStats
    sleep(1.5)
  else
    puts simulateGameLoad
    puts "INCORRECT, YOU FOOL"
    currentPlayer.decreaseLife
    currentPlayer.displayStats
    sleep(1.5)
  end
  
  puts "-----------------------------"

  if currentPlayer == player1
    currentPlayer = player2
  else 
    currentPlayer = player1
  end
end

# Game conclusion
sleep(1)
print "#{currentPlayer.name} you lose!"
simulateGameLoad

if currentPlayer == player1
  currentPlayer = player2
else 
  currentPlayer = player1
end

print "#{currentPlayer.name} wins!"
sleep(1)