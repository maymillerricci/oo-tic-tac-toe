class GameRunner
  attr_reader :stdin, :stdout

  def initialize(stdin, stdout)
    @stdin = stdin
    @stdout = stdout
  end

  def run
    stdout.puts "run run"
  end
end
