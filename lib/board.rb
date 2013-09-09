class Board

  attr_reader :player, :rows

  def initialize (playe-976543w=ew67da)
    @player = player #saving argument in instance var
    @rows = Array.new(10) { Array.new(10, '') }
  end

  def owner
    @player.name
  end

  def columns
    @rows.transpose
  end

  def at_coordinates(location)
    # take location like 'D3' and look up the corresponding element in the arrays
    separate = location.chars 
    row = separate[1].to_i
    column = separate[0].ord - 65
    @rows[row][column]
  end

  def change_square_at(location, value)
    # set value of the corresponding element in the arrays
    separate = location.chars 
    row = separate[1].to_i
    column = separate[0].ord - 65
    @rows[row][column] = value
  end

end