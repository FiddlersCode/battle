require 'player'
describe Player do
  subject(:picard) { Player.new('Picard') }
    it 'returns the name' do
      expect(picard.name). to eq 'Picard'
    end
end
