require './lib/team'

describe Team do
  subject { Team.new('France') }

  describe '#init' do
    it 'has a country' do
      expect(subject.country).to eql('France')
    end

    it 'is not eliminated by default' do
      expect(subject.eliminated?).to be false
    end

    it 'has no players by default' do
      expect(subject.players).to eql([])
    end
  end
end
