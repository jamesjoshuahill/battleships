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

  it 'should have 10 rows exactly' do
    board = Board.new('James')
    expect(board.rows.count).to eq 10
  end

  it 'should have 10 columns' do
    board = Board.new('Julie')
    expect(board.columns.count).to eq 10
  end

  it 'should have 100 squares'

end