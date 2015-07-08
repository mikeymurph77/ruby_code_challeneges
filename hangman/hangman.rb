# Add Welcome message
# Create word bank
# Select a word
# Get the index of each letter of the word
# Display dash
# Add 6 wrong guesses
# 

class Hangman
  def initialize
    @words = ["Superman", "Spiderman", "Batman", "Ironman", "antman"]
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
    p @selected_word = @words.sample
    word_array = @selected_word.scan(/./)
    # word_array.each_with_index {|val, index| puts "#{val} => #{index}" }
    @word_hash = {}
    word_array.each_with_index do |val, index|
      if @word_hash.has_key?(val)
        p "add extra"
        @word_hash[val] << index
      else
        @word_hash.merge!(val => index)
      end
    end 
    p @word_hash 
  end

  def display_dashes
    (["_ "] * @selected_word.length).join.strip

    text = "a"
    p @word_hash[text]
  end
end

new_game = Hangman.new
new_game.play