require_relative 'board'
require_relative 'game_rules'

class PlayGame

  def initialize
    @p1 = '⛔'
    @p2 = '⚫'
  end

  def game_start
    puts "Welcome to Connect-Four! The first player to put four of their pieces in a row horizontally, vertically, or diagonally wins!"
    remaining_turns = 42
    win = false
    while win == false || remaining_turns < 0
      round_play(piece, player_name)
      win = is_win?(piece)
      remaining_turns -= 1
    end

  end

  def round_play(c, player)
    check = false
    puts "#{player}'s turn. Type the number of the column where you want your piece to go."
    while check == false
      column = gets.chomp.to_i
      if place_piece(column, c) == false || (column > 7 && column < 1)
        check = false
        puts "Invalid move, try again!"
      else
        check = true
      end
    end
  end


end

game = PlayGame.new
game.place_piece(7, '⚫')
game.place_piece(7, '⚫')
game.place_piece(7, '⚫')
game.place_piece(7, '⛔')
game.print_board
game.check