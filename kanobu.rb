puts 'введите вариант:'
puts '0 - Камень'
puts '1 - Ножницы'
puts '2 - Бумага'
puts '3 - Огонь'
variants = ["Камень", "Ножницы", "Бумага", "Огонь"]
my_choice = gets.chomp.to_i
computer_choices = rand(4)
results = ["Ваша ПОБЕДА!", "Ничья", "Ваш проигрыш"]

def find_winner(you, computer, results_game)
  #все победные комбинации для юзера
  if (you == 0 && computer == 1) ||
    (you == 1 && computer == 2) ||
    (you == 2 && computer == 0) ||
    (you == 0 && computer == 3) ||
    (you == 3 && computer == 2) ||
    (you == 3 && computer == 1)
    return results_game[0]
  #если ничья
  elsif you == computer
    return results_game[1]
  #все остальные варианты - проигрыш юзера
  else
    return results_game[2]
  end
end

puts 'Вы выбрали: ' + variants[my_choice]
puts 'Компьютер выбрал: ' + variants[computer_choices]
puts
puts 'Результат игры: ' + find_winner(my_choice, computer_choices, results)
