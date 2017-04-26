require 'game'
require './lib/player'
describe '#game' do
  game = Game.new
  let(:player_1) { double :player}
  let(:player_2) { double :player }

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:sustain_damage)
      game.attack(player_2)
    end
  end

  # describe '#sustain_damage' do
  #   it 'reduces the player\'s laser strikes' do
  #     expect { game.sustain_damage }.to change { game.laser_strikes}.by(-1)
  #   end
  # end
end
