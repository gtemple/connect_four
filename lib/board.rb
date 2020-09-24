module Misc
  def print_format(ar)
    p ar.map { |s| s + " |"}.unshift("|").join(" ")
  end
end

class Board
  include Misc

  def initialize()
    @board = board_size
  end

  def board_size
    board = ['1 ', '2 ', '3 ', '4 ', '5 ', '6 ', '7 ']
    42.times do
      board.unshift('⚪')
    end
    board
  end
    
  def print_board
    first = 0
    last = 6
    7.times do
      print_format(@board[first..last])
      first += 7
      last += 7
    end
  end
end
