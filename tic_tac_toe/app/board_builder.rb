require_relative "row_builder"

class BoardBuilder
  BOARD_SIZE = 3

  def run
    (0..BOARD_SIZE * 2 + 1).map do |x|
      (0..BOARD_SIZE).map do |y|
        RowBuilder.new(x, y).run
      end
    end.join
  end
end
