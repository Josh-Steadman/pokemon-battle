require 'game'

describe Game do
    let(:john) { double :john}
    let(:meg) { double :john}
    subject(:game) { described_class.new(john, meg)}

    describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq john
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq meg
    end
  end

  describe '#attack' do
    it 'damages the player' do
    expect(meg).to receive(:receive_damage)
    game.attack(meg)
    end
  end

end