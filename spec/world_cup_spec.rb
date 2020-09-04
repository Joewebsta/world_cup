require './lib/player'
require './lib/team'
require './lib/world_cup'

describe WorldCup do
  before do
    @france = Team.new('France')
    @mbappe = Player.new({ name: 'Kylian Mbappe', position: 'forward' })
    @pogba = Player.new({ name: 'Paul Pogba', position: 'midfielder' })
    @france.add_player(@mbappe)
    @france.add_player(@pogba)

    @croatia = Team.new('Croatia')
    @modric = Player.new({ name: 'Luka Modric', position: 'midfielder' })
    @vida = Player.new({ name: 'Domagoj Vida', position: 'defender' })
    @croatia.add_player(@modric)
    @croatia.add_player(@vida)
  end

  subject { WorldCup.new(2018, @france, @croatia) }

  describe '#init' do
    it 'has a year' do
      expect(subject.year).to eql 2018
    end

    it 'has teams' do
      expect(subject.teams).to eql([@france, @croatia])
    end
  end
end
