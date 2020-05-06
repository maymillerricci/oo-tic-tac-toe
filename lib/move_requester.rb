require_relative "move_validator"

class MoveRequester
  attr_reader :stdin, :stdout
  attr_accessor :move

  def initialize(stdin, stdout)
    @stdin = stdin
    @stdout = stdout
  end

  def run
    stdout.puts "Enter your move"
    valid_move_from_user
  end

  private

  def valid_move_from_user
    if MoveValidator.new(get_input).run
      move
    else
      re_request
    end
  end

  def get_input
    self.move = stdin.gets.chomp
  end

  def re_request
    stdout.puts "Please enter valid coordinates"
    valid_move_from_user
  end

  def valid?(move)
    if move == "B2"
      true
    else
      false
    end
  end
end
