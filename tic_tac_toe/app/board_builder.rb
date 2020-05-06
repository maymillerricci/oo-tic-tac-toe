class BoardBuilder
  def run
    output = ""
    (0..7).each do |x|
      (0..3).each do |y|
        if x == 0
          if y == 0
            output += "   "
          else
            output += "#{y}  "
          end
        end

        if x == 1
          if y == 0
            output += "   "
          else
            output += "__ "
          end
        end

        if x == 2 || x == 4 || x == 6
          if y == 0
            output += "#{("A".ord + x/2 - 1).chr} "
          elsif y == 3
            output += "|  |"
          else
            output += "|  "
          end
        end

        if x == 3 || x == 5 || x == 7
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
