def valid_move?(board, index)
  if exists? and !position_taken
    return true
  end
  return false
end

def exists?(index)
  if index<0 or index>8
    return false
  end
  return true
end

def position_taken?(board, index)
  if board[index]==" "
    return true
  end
  return false
end

def input_to_index(index)
  
  return index.to_i-1
end

def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board,index,char="X")
  board[index]=char
end
  
def char_choose(count)
  if count % 2 ==0
    return "O"
  end
  return "X"
end


def turn(board)
  counter=1
  until counter==9
    input = gets.strip
    input = input_to_index(input)
    char = char_choose(counter)

    if valid_move?
     board= move(board,input,char)
    end
    counter+=1
  end
end