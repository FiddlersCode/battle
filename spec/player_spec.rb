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
      expect(picard.laser_strikes).to eq described_class::DEFAULT_LASER_STRIKES
    end
  end

  describe '#sustain_damage' do
    it 'reduces the player\'s laser strikes' do
      expect { picard.sustain_damage }.to change { picard.laser_strikes}.by(-1)
    end
  end
end
