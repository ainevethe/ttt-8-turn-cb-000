def display_board

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


def move

end


