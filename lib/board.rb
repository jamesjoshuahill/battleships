class Board

  attr_reader :player

  def initialize (player)
    @player = player #saving argument in instance var
  end

  def owner
    @player.name
  end

  def rows
    rows = Array.new(10) { Array.new(10, '') }
  end

  def columns
    rows.transpose
  end
 
end