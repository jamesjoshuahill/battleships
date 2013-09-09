class Board

  attr_reader :player

  def initialize (player)
    @player = player #saving argument in instance var
  end

  def owner
    @player.name
  end
 

end



