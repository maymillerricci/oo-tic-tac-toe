class BoardBuilder
  BOARD_SIZE = 3

  def run
    output = ""

    (0..BOARD_SIZE * 2 + 1).each do |x|
      (0..BOARD_SIZE).each do |y|
        if x == 0
          output += first_row(y)
        elsif x == 1
          output += second_row(y)
        elsif x.even?
          output += even_row(x / 2 - 1, y)
        elsif x.odd?
          output += odd_row(y)
        end
      end

      output += end_of_row(x)
    end

    output
  end

  private

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
