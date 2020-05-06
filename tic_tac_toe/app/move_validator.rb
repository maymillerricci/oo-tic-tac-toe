class MoveValidator
  attr_reader :move

  def initialize(move)
    @move = move
  end

  def run
    valid_length? && valid_coordinates?
  end

  private

  def valid_length?
    move.length == 2
  end

  def valid_coordinates?
    valid_letter? && valid_number?
  end

  def valid_letter?
    ("A".."C").include?(move[0])
  end

  def valid_number?
    ("1".."3").include?(move[1])
  end
end
