# frozen_string_literal: true

# Class set up
class Mastermind
  COLORS = %w[Red Green Blue Yellow Purple Orange]

  def initialize
    @secret_code = generate_secret_code
    @turns_left = 12
  end

  # Method to start the game
  def play
    display_welcome_message

    until @turns_left.zero?
      display_turns_left
      guess = make_guess
      feedback = provide_feedback(guess)
      puts feedback

      break if guess == @secret_code

      @turns_left -= 1
    end

    display_game_result
  end

  # Method to display the welcome message
  def display_welcome_message
    puts 'Welcome to Mastermind! Can you guess the secret code?'
    puts "Available colors: #{COLORS.join(', ')}"
  end

  # Method to display the remaining turns
  def display_turns_left
    puts "\nTurns left: #{@turns_left}"
  end

  private

  # Method to generate a random secret code
  def generate_secret_code
    Array.new(4) { COLORS.sample }
  end

  # Method to get a valid guess from the player
  def make_guess
    loop do
      print 'Enter your guess (e.g., Red Green Blue Yellow): '
      guess = gets.chomp.split.map(&:capitalize)
      return guess if valid_guess?(guess)

      puts 'Invalid guess! Please enter four valid colors.'
    end
  end

  # Method to validate if the guess is valid
  def valid_guess?(guess)
    guess.length == 4 && guess.all? { |color| COLORS.include?(color) }
  end

  # Method to provide feedback on the guess
  def provide_feedback(guess)
    # Iterate over each color in the guess and compare it with the secret code
    feedback = guess.map.with_index do |color, index|
      if color == @secret_code[index]
        '●'  # Correct color in correct position
      elsif @secret_code.include?(color)
        '○'  # Correct color in wrong position
      else
        '-'  # Incorrect color
      end
    end

    feedback.sort.join(' ') # Join the feedback symbols and sort them alphabetically
  end

  # Method to display the game result
  def display_game_result
    if @turns_left.zero?
      puts "Out of turns! The secret code was #{@secret_code.join(', ')}. Game over!"
    else
      puts 'Congratulations! You guessed the secret code!'
    end
  end
end

# Create a new instance of the Mastermind game and start playing
game = Mastermind.new
game.play
