
#main_method
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if index.between?(0,8)

      move(board, index, value = "X")
      display_board(board)
      turn(board)
  else
    while !index.between?(0,8)
      turn(board)
    end
 end
end

#all required helper methods
#display_board
def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end
#position_taken?
def convert_to_board_position(user_position)
  index = user_position.to_i-1
  return index
end

def position_taken?(board, index)
  if board[index] == " "|| board[index] == ""|| board[index] == nil
    return false
  elsif board[index] == "X"|| board[index] == "O"
    return true
  end
end

#move
def input_to_index(input)
  index = input.to_i - 1
  return index
end

def move(board, index, value = "X")
  board[index] = value
  return board
end
