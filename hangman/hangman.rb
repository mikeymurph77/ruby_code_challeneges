# Add Welcome message
# Create word bank
# Select a word
# Add 6 wrong guesses
# 

class Hangman
  def initialize
    @words = ["Superman", "Spiderman", "Batman", "Ironman", "Antman"]
  end

  def play
    welcome_message
    select_word
    display_dashes
  end 

  def welcome_message
    p "Hello welcome to hangman"
  end

  def select_word
    @selected_word = @words.sample
  end

  def display_dashes
    dashes = []
    number_of_dashes = @selected_word.length
    number_of_dashes.times do 
      dashes << ["_ "]
    end
    p dashes.join
  end
end

new_game = Hangman.new
new_game.play