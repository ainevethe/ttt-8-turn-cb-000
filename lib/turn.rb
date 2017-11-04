def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  puts "What is your chosen move (1-9)? "
    user_input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp.to_i
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, character="X")
    display_board(board)
  else
    turn(board)
  end
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  else board[index] == " " || ""
  return false
  end
end

def valid_move?(board, index)
  if position_taken?(board, index) == true
    return false
  elsif index.between?(0, 8) == false
    return false
  else (index.between?(0, 8))
    return true
  end
end

def move(board, index, character="X")
  board[index] = character
end
