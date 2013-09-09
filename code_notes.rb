it 'should know it\'s player\'s name' do
  player = double :player_class
  board = Board.new(player)
  expect(player).to receive(:first_name).and_return('First')
  expect(player).to receive(:last_name).and_return('Last')

  expect(board.owner).to eq 'First Last'
end



attr_reader :player

# is the same as

def player
  @player      #read saved instance var
end