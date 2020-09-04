require './lib/player'

describe Player do
  subject { Player.new({ name: 'Luka Modric', position: 'midfielder' }) }

  describe '#init' do
    it 'has a name' do
      expect(subject.name).to eql 'Luka Modric'
    end

    it 'has a position' do
      expect(subject.position).to eql 'midfielder'
    end
  end
end
