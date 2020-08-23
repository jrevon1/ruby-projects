# This is a work in progress to see if I can make a blackjack game from scratch
#
# There is some faulty logic in the second (?) and third draws that needs fixing
# And I need to work on putting in a score system to determine wins and busts

deck = ["1 of Clubs", "1 of Diamonds", "1 of Hearts", "1 of Spades",
        "2 of Clubs", "2 of Diamonds", "2 of Hearts", "2 of Spades",
        "3 of Clubs", "3 of Diamonds", "3 of Hearts", "3 of Spades",
        "4 of Clubs", "4 of Diamonds", "4 of Hearts", "4 of Spades",
        "5 of Clubs", "5 of Diamonds", "5 of Hearts", "5 of Spades",
        "6 of Clubs", "6 of Diamonds", "6 of Hearts", "6 of Spades",
        "7 of Clubs", "7 of Diamonds", "7 of Hearts", "7 of Spades",
        "8 of Clubs", "8 of Diamonds", "8 of Hearts", "8 of Spades",
        "9 of Clubs", "9 of Diamonds", "9 of Hearts", "9 of Spades",
        "10 of Clubs", "10 of Diamonds", "10 of Hearts", "10 of Spades",
        "Jack of Clubs", "Jack of Diamonds", "Jack of Hearts", "Jack of Spades",
        "Queen of Clubs", "Queen of Diamonds", "Queen of Hearts", "Queen of Spades",
        "King of Clubs", "King of Diamonds", "King of Hearts", "King of Spades"
]

# This method handles the drawing the first card
def first_draw(deck)
  first_card = deck.shuffle!.sample.to_s
  puts "You drew the #{first_card}"
end


# This method handles drawing the second card
# And re-draws the card if it's the same as the first card
def second_draw(deck, first_card)
  deck.shuffle
  second_card = deck.shuffle!.sample.to_s
  if second_card.to_s == first_card.to_s
    puts "Uh oh, you already drew the #{second_card}"
    puts "Drawing another card..."
    second_card = deck.shuffle!.sample.to_s
    puts "You drew the #{second_card}"
    return second_card
  else
    puts "You drew the #{second_card}"
    return second_card
  end
end

# This method handles drawing the third card
# And re-draws the card if it's the same as the first or the second card
# def third_draw(deck, first_card, second_card)
#   deck.shuffle
#   third_card = deck.shuffle!.sample.to_s
#   if third_card.to_s == first_card.to_s || second_card.to_s
#     puts "Uh oh, you already drew the #{third_card}"
#     puts "Drawing another card..."
#     third_card = deck.shuffle!.sample.to_s
#     puts "You drew the #{third_card}"
#     return third_card
#   else
#     puts "You drew the #{third_card}"
#     return third_card
#   end
# end

# Execution flow
puts "Welcome to the card game, pal!"

first_card = first_draw(deck)
second_card = second_draw(deck, first_card)

# puts "Would you like to 'hit' or 'stand'?"
# action = gets.chomp

# if action.downcase == "hit"
#   third_card = third_draw(deck, first_card, second_card)
#   puts "You now have the #{third_card}, the #{first_card}, and the #{second_card}"
# else if action.downcase == "stand"
  puts "You stand with #{first_card} and the #{second_card}"
# end
# end
