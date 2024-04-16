# frozen_string_literal: true

# Set up TicTacToe class
class TicTacToe
  def initialize
    # Initialize the game board with a 3x3 grid of empty cells
    @board = Array.new(3) { Array.new(3, ' ') }
    # Set the current player to 'X' (the first player)
    @current_player = 'X'
  end

  def display_board
    # Display the current state of the board
    puts '  1 2 3'
    @board.each_with_index { |row, index| puts "#{index + 1} #{row.join(' ')}" }
  end

  def check_winner
    # Concatenate the rows, columns, and diagonals to check for a winning condition
    lines_to_check = @board + @board.transpose + diagonals
    # Check if any line has all the same elements (X or O) and is not empty
    lines_to_check.any? { |line| line.uniq.length == 1 && line[0] != ' ' }
  end

  def diagonals
    # Get the two diagonals of the board
    [
      [@board[0][0], @board[1][1], @board[2][2]],
      [@board[0][2], @board[1][1], @board[2][0]]
    ]
  end

  def board_full?
    # Check if there are no empty cells left on the board
    @board.flatten.none?(' ')
  end

  def game_over?
    # Check if the game is over either by a win or a tie
    check_winner || board_full?
  end

  def switch_players
    # Switch the current player between 'X' and 'O'
    @current_player = (@current_player == 'X' ? 'O' : 'X')
  end

  def place_move(row, col)
    # Place the current player's mark (X or O) on the specified cell if it's empty
    @board[row][col] = @current_player if @board[row][col] == ' '
  end

  def start_game
    # Start the game loop
    puts 'Welcome to Tic-Tac-Toe!'
    until game_over?
      # Display the current state of the board
      display_board
      # Prompt the current player to make a move
      player_move
    end
    # Display the final state of the board and announce the winner or a tie
    display_board
    puts check_winner ? "Player #{@current_player} wins!" : "It's a tie!"
  end

  private

  def player_move
    # Prompt the current player to enter their move
    puts "Player #{@current_player}, enter your move (row, col):"
    # Get and validate the player's move
    move = play_valid_move
    # If the move is invalid, display an error message and return
    return puts 'Invalid input. Please enter row and column numbers separated by a comma (e.g., 1,2).' unless move

    # Extract the row and column from the validated move
    row, col = move
    # If the chosen cell is already taken, display an error message and return
    return puts 'That cell is already taken. Try again.' unless cell_empty?(row, col)

    # Place the player's move on the board and switch players
    place_move(row, col)
    switch_players
  end

  def play_valid_move
    # Get the player's move input and convert it to row and column indices
    move = gets.chomp.split(',').map(&:to_i)
    # Check if the input is valid (contains two integers between 1 and 3)
    move.length == 2 && move.all? { |coord| coord.between?(1, 3) } ? move.map { |coord| coord - 1 } : nil
  end

  def cell_empty?(row, col)
    # Check if the specified cell on the board is empty
    @board[row][col] == ' '
  end
end

# Create a new instance of the game and start it
game = TicTacToe.new
game.start_game
