class RowBuilder
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def run
    if x <= 1
      header
    else
      body
    end
  end

  private

  def header
    if y == 3
      "#{header_base}\n"
    else
      header_base
    end
  end

  def body
    if y == 3
      "#{body_base}|\n"
    else
      body_base
    end
  end

  def header_base
    if x == 0
      first
    else
      second
    end
  end

  def body_base
    if x.even?
      even
    else
      odd
    end
  end

  def first
    if y == 0
      "   "
    else
      "#{y}  "
    end
  end

  def second
    if y == 0
      "   "
    else
      "__ "
    end
  end

  def even
    if y == 0
      "#{("A".ord + x / 2 - 1).chr} "
    else
      "|  "
    end
  end

  def odd
    if y == 0
      "  "
    else
      "|__"
    end
  end
end
