require "./players"
require "./questions"

  
puts "Welcome to the hardest math game in existance. Duh duh daaaa!!"

player1 = Players.new("player1")
player2 = Players.new("player2")

count = 0   

while (player1.is_alive? && player2.is_alive?) do 
  ##determine whos turn it is
  if count == 0
    player = player1
  else
    player = player2
  end  

  puts '----- NEW TURN -----'

  question = Questions.new
  
  puts "#{player.name}: #{question.question_string}"
  print '> '
  answer = gets.chomp


  if answer.to_i == question.answer
    puts 'YES! You are correct.'
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"       
  else 
    player.lives -= 1
    puts 'Seriously? No!'
    puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
  end

  count = (count + 1) % 2
end 

if (player1.lives == 0)
  puts "#{player2.name} wins with a score of #{player2.lives}/3"
  puts '----- GAME OVER -----'
  puts 'Good bye!'
else
  puts "#{player1.name} wins with a score of #{player1.lives}/3"
  puts '----- GAME OVER -----'
  puts 'Good bye!' 
end 
 