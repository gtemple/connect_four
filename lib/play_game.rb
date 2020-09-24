require_relative 'board'
require_relative 'game_rules'

class PlayGame < GameRules

  def initialize
    @p1 = '⛔'
    @p2 = '⚫'
    @name1 = ''
    @name2 = ''
    @remaining_turns = 42
    @board = board_size
  end

  def new_game
    puts "Play again? [y/n]"
    ng = false
    while ng == false
      again = gets.chomp.downcase
      if again == 'y'
        another = PlayGame.new
        another.game_start
      elsif again == 'n'
        ng = true
        exit
      else
        puts "Invalid command."
      end
    end
  end


  def round_play(c, player)
    check = false
    puts "#{player}'s turn. Type the number of the column where you want your piece to go."
    while check == false
      column = gets.chomp.to_i
      placed = place_piece(column, c)
      if (column <= 7 && column >= 1) && placed != false
        check = true
      else
        puts "Invalid move, try again!"
        check = false
      end
    end
  end

  def player(symbol, name)
    round_play(symbol, name)
    print_board
    @remaining_turns -= 1
    return is_win?(symbol)
  end

  def game_start
    puts "Welcome to Connect-Four! The first player to put four of their pieces in a row horizontally, vertically, or diagonally wins!"
    puts "Player 1, type your name:"
    @name1 = gets.chomp
    puts "Player 2, type your name:"
    @name2 = gets.chomp
    remaining_turns = 42
    win = false
    winner = ''
    while win == false || @remaining_turns < 0
      player1 = player(@p1, @name1)
      if player1 == true
        win = true
        winner = @name1
        break
      end
      player2 = player(@p2, @name2)
      if player2 == true
        win = true
        winner = @name2
      end
    end
    if win == true
      puts "Congrats #{winner}, you win!"
    else
      puts "Stalemate!"
    end
  new_game
  end
end

game = PlayGame.new
game.game_start