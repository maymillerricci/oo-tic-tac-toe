require_relative "../../tic_tac_toe/app/move_validator"

describe "Move validator" do
  it "is valid with valid coordinates" do
    expect(MoveValidator.new("A2").run).to be true
    expect(MoveValidator.new("A3").run).to be true
    expect(MoveValidator.new("B1").run).to be true
    expect(MoveValidator.new("C3").run).to be true
  end

  it "is invalid with invalid coordinates" do
    expect(MoveValidator.new("").run).to be false
    expect(MoveValidator.new("A").run).to be false
    expect(MoveValidator.new("3").run).to be false
    expect(MoveValidator.new("A7").run).to be false
    expect(MoveValidator.new("D1").run).to be false
    expect(MoveValidator.new("AA7").run).to be false
    expect(MoveValidator.new("word").run).to be false
  end
end
