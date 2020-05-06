class BoardBuilder
  BOARD_SIZE = 3
  def run
    output = ""

    (0..BOARD_SIZE * 2 + 1).each do |x|
      (0..BOARD_SIZE).each do |y|
        if x == 0
          if y == 0
            output += "   "
          else
            output += "#{y}  "
          end

        elsif x == 1
          if y == 0
            output += "   "
          else
            output += "__ "
          end

        elsif x.even?
          if y == 0
            output += "#{("A".ord + x/2 - 1).chr} "
          elsif y == 3
            output += "|  |"
          else
            output += "|  "
          end

        elsif x.odd?
          if y == 0
            output += "  "
          elsif y == 3
            output += "|__|"
          else
            output += "|__"
          end
        end
      end

      output += "\n"
    end

    output
  end
end
