require './lib/player'
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

    it 'can have its "eliminated" status changed' do
      subject.eliminated = true
      expect(subject.eliminated?).to be true
    end

    it 'has no players by default' do
      expect(subject.players).to eql([])
    end
  end

  describe '#add_player' do
    it 'adds a player to the players array' do
      mbappe = Player.new({ name: 'Kylian Mbappe', position: 'forward' })
      subject.add_player(mbappe)
      expect(subject.players).to eql([mbappe])
    end
  end
end
