require_relative "row_builder"

class BoardBuilder
  BOARD_SIZE = 3

  attr_accessor :board

  def initialize
    @board = ""
  end

  def run
    (0..BOARD_SIZE * 2 + 1).each do |x|
      (0..BOARD_SIZE).each do |y|
        self.board += RowBuilder.new(x, y).run
      end

      self.board += end_of_row(x)
    end

    board
  end

  private

  def end_of_row(x)
    if x == 0 || x == 1
      "\n"
    else
      "|\n"
    end
  end
end
