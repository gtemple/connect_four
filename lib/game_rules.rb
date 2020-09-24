require_relative 'board'

class GameRules < Board

  def place_piece(position, color)
    n = 41 + position
    placed = false
    while placed == false 
      if @board[n] == '⚪'
        @board[n] = color
        placed = true
      elsif n < 0
        placed = true
        false
      else
        n -= 7
      end
    end
  end

  def vert_win(color)
    n = 0 
    vertical = 0
    win = false
    7.times do
      7.times do
        if vertical == 4
          win = true 
          break
        elsif @board[n] == color
          vertical +=1
        else
          vertical = 0
        end
        n += 7
      end
      n -= 48
    end
    win
  end

  def zontal_win(color)
    i = 0
    horizontal = 0
    win = false
    6.times do
      7.times do
        if horizontal == 4
          win = true
          break
        elsif @board[i] == color
          horizontal +=1
        else
          horizontal = 0
        end
        i += 1
      end
      horizontal = 0
      i += 1
    end
    win
  end

  def diagonal_win_lr(color)
    n = 0 
    diagonal = 0
    win = false
    3.times do
      4.times do
        4.times do
          if @board[n] == color
            diagonal +=1
          else
            diagonal = 0
          end
          win = true if diagonal == 4
          n += 8
        end
        n -= 31
      end
      n += 3
    end
    win
  end

  def diagonal_win_rl(color)
    n = 3 
    diagonal = 0
    win = false
    3.times do
      4.times do
        4.times do
          if @board[n] == color
            diagonal +=1
          else
            diagonal = 0
          end
          win = true if diagonal == 4
          n += 6
        end
        n -= 31
      end
      n += 3
    end
    win
  end
  
  def is_win?(c)
    vert = vert_win(c)
    zontal = zontal_win(c)
    diagonal_lr = diagonal_win_lr(c)
    diagonal_rl = diagonal_win_rl(c)
    puts vert
    puts zontal
    puts diagonal_lr
    puts diagonal_rl
  end

end

