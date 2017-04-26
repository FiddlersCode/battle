require 'player'
describe Player do
  subject(:picard) { Player.new('Picard') }
  subject(:borg) { Player.new('Borg')}

  describe '#name' do
    it 'returns the name' do
      expect(picard.name). to eq 'Picard'
    end
  end
end
