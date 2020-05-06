class RowBuilder
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def run
    if x <= 1
      header_row
    else
      body_row
    end
  end

  private

  def header_row
    if y == 3
      "#{header_row_base}\n"
    else
      header_row_base
    end
  end

  def body_row
    if y == 3
      "#{body_row_base}|\n"
    else
      body_row_base
    end
  end

  def header_row_base
    if x == 0
      first_row
    else
      second_row
    end
  end

  def body_row_base
    if x.even?
      even_row
    else
      odd_row
    end
  end

  def first_row
    if y == 0
      "   "
    else
      "#{y}  "
    end
  end

  def second_row
    if y == 0
      "   "
    else
      "__ "
    end
  end

  def even_row
    if y == 0
      "#{("A".ord + x / 2 - 1).chr} "
    else
      "|  "
    end
  end

  def odd_row
    if y == 0
      "  "
    else
      "|__"
    end
  end
end
