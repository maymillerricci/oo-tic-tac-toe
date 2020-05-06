class BoardBuilder
  BOARD_SIZE = 3

  attr_accessor :board

  def initialize
    @board = ""
  end

  def run
    (0..BOARD_SIZE * 2 + 1).each do |x|
      (0..BOARD_SIZE).each do |y|
        self.board += row(x, y)
      end

      self.board += end_of_row(x)
    end

    board
  end

  private

  def row(x, y)
    if x <= 1
      header_row(x, y)
    else
      body_row(x, y)
    end
  end

  def header_row(x, y)
    if x == 0
      first_row(y)
    else
      second_row(y)
    end
  end

  def body_row(x, y)
    if x.even?
      even_row(x / 2 - 1, y)
    else
      odd_row(y)
    end
  end

  def first_row(y)
    if y == 0
      "   "
    else
      "#{y}  "
    end
  end

  def second_row(y)
    if y == 0
      "   "
    else
      "__ "
    end
  end

  def even_row(x, y)
    if y == 0
      "#{("A".ord + x).chr} "
    else
      "|  "
    end
  end

  def odd_row(y)
    if y == 0
      "  "
    else
      "|__"
    end
  end

  def end_of_row(x)
    if x == 0 || x == 1
      "\n"
    else
      "|\n"
    end
  end
end
