require 'board'

describe Board do   
  it 'should have a player' do
    board = Board.new('Rose')
    expect(board.player).to eq 'Rose'
    board = Board.new('Bob')
    expect(board.player).to eq 'Bob'
  end

  it 'should know it\'s player\'s name' do
    player = double :player_class
    board = Board.new(player)
    expect(player).to receive(:name).and_return('Billy')

    expect(board.owner).to eq 'Billy'
  end


end