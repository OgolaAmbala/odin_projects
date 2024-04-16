# frozen_string_literal: true

# Set up the board class
class Board
  def initialize
    # Initialize the board with a 3x3 grid
    @grid = Array.new(3) { Array.new(3, nil) }
  end

  def display
    # Display the current state of the board
    @grid.each { |row| puts row.map { |cell| cell || '_' }.join(' ') }
  end

  def place_mark(row, col, symbol)
    # Place a player's mark on the board at the specified position if the cell is empty
    if @grid[row][col].nil?
      @grid[row][col] = symbol
      true
    else
      false
    end
  end

  def full?
    # Check if the board is full (no empty cells left)
    @grid.all? { |row| row.none?(&:nil?) }
  end

  def winner?
    return true if winning_row? || winning_column? || winning_diagonal?

    false
  end

  private

  def winning_row?
    @grid.each do |row|
      return true if all_equal_and_not_nil?(row)
    end
    false
  end

  def winning_column?
    @grid.transpose.each do |col|
      return true if all_equal_and_not_nil?(col)
    end
    false
  end

  def winning_diagonal?
    diag1 = [@grid[0][0], @grid[1][1], @grid[2][2]]
    diag2 = [@grid[0][2], @grid[1][1], @grid[2][0]]

    return true if all_equal_and_not_nil?(diag1) || all_equal_and_not_nil?(diag2)

    false
  end

  def all_equal_and_not_nil?(array)
    array.uniq.length == 1 && !array[0].nil?
  end
end

# Set up the player class
class Player
  attr_reader :symbol

  def initialize(symbol)
    # Initialize the player with a symbol (X or O)
    @symbol = symbol
  end
end

# Set up the Game class
class Game
  def initialize
    # Initialize the game with a new board, two players (X and O), and set the current player index to 0 (first player)
    @board = Board.new
    @players = [Player.new('X'), Player.new('O')]
    @current_player_index = 0
  end

  def start
    # Display a welcome message and start the game loop
    puts 'Welcome to Tic-Tac-Toe!'
    until game_over?
      # Display the current state of the board
      @board.display
      # Prompt the current player to make a move
      player_move
      # Switch to the next player for the next turn
      switch_players
    end
    # Display the final state of the board and announce the winner or a tie
    @board.display
    puts @board.winner? ? "Player #{@players[@current_player_index].symbol} wins!" : "It's a tie!"
  end

  private

  def player_move
    # Prompt the current player to enter their move
    puts "Player #{@players[@current_player_index].symbol}, enter your move {row, col}:"
    # Get and validate the player's move
    move = play_valid_move
    if move
      row, col = move
      # Place the player's mark on the board and validate the move
      place_mark_and_validate(row, col)
    else
      # If the input is invalid, prompt the player to try again
      puts 'Invalid input. Please enter the row and column numbers separated by a comma (e.g., 1,2)'
      player_move
    end
  end

  def place_mark_and_validate(row, col)
    # Place the player's mark on the board at the specified position if the cell is empty
    # If the chosen cell is already taken, prompt the player to try again
    return unless @board.place_mark(row, col, @players[@current_player_index].symbol).nil?

    puts 'That cell is already taken. Try again.'
    player_move
  end

  def play_valid_move
    # Get the player's move input and validate it
    move = gets.chomp.split(',').map(&:to_i)
    # Ensure the input contains two integers between 1 and 3
    move.length == 2 && move.all? { |coord| coord.between?(1, 3) } ? move.map { |coord| coord - 1 } : nil
  end

  def game_over?
    # Check if the game is over (either by a win or a tie)
    @board.full? || @board.winner?
  end

  def switch_players
    # Switch to the next player for the next turn
    @current_player_index = (@current_player_index + 1) % 2
  end
end

# Create a new instance of the game and start it
Game.new.start
