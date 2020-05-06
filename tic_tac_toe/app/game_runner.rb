require_relative "board_builder"

class GameRunner
  attr_reader :stdin, :stdout

  def initialize(stdin, stdout)
    @stdin = stdin
    @stdout = stdout
  end

  def run
    stdout.puts BoardBuilder.new.run
  end
end
