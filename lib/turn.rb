def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
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


def valid_move?

end


def move(board, position, character="X")
  board[position] = character
end
