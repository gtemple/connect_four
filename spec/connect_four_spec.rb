require './lib/connect_four'

describe Board do
  describe "#board_size" do
    it "returns a 6 x 7 board" do
    game = Board.new
    expect(game.board_size).to eql(['⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', "1 ", "2 ", "3 ", "4 ", "5 ", "6 ", "7 "])
    end
  end
end

describe Game do
  win = ['⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚫', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚫', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚫', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚫', "1 ", "2 ", "3 ", "4 ", "5 ", "6 ", "7 "]
  describe "#place_piece" do
    it "Places the player's piece in its designated position." do
      game = Game.new
      expect(game.place_piece(7, '⚫')).to eql(['⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚪', '⚫', "1 ", "2 ", "3 ", "4 ", "5 ", "6 ", "7 "])
    end
  end

  describe "#is_win?" do
    it "Checks to see if the win condition is met." do
      game = Game.new
      expect(game.check.to equl(true)
end