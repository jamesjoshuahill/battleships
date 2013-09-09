class Board

  attr_reader :player

  def initialize (player)
    @player = player #saving argument in instance var
  end

  def owner
    @player.name
  end

  def rows
    [1,2,3,4,5,6,7,8,9,10]
  end

  def columns
    (0..9).to_a
  end
 
end