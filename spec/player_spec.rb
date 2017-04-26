require 'player'
describe Player do
  subject(:picard) { Player.new('Picard') }
  subject(:borg) { Player.new('Borg')}

  describe '#name' do
    it 'returns the name' do
      expect(picard.name). to eq 'Picard'
    end
  end

  describe '#laser_strikes' do
    it 'returns the laser strikes' do
      expect(dave.laser_strikes).to eq described_class::DEFAULT_LASER_STRIKES
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(borg).to recieve(:receive_damage)
      picard.attack(borg)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player laser strikes' do
      expect { picard.receive_damage }.to change { picard.laser_strikes}.by(-1)
    end
  end
end
