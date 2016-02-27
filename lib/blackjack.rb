def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  choices = [1,2,3,4,5,6,7,8,9,10,11]
  card = choices[rand(choices.length)]
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"# code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp# code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"# code #end_game here
end

def initial_round
  card_total = deal_card + deal_card# code #initial_round here
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    card_total += deal_card
  elsif input == "s"
      
  end
  card_total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  card_total = deal_card + deal_card
  hit?(card_total)
  until card_total > 22 
   card_total += deal_card
   display_card_total(card_total)
  end
  end_game(card_total)
end
    
