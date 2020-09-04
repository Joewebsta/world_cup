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

  describe '#active_players_by_position' do
    it 'filters players by position when none of the teams have been eliminated' do
      active_players = subject.active_players_by_position('midfielder')
      expect(active_players).to eql([@pogba, @modric])
    end

    it 'filters players by position when some teams have been eliminated' do
      @croatia.eliminated = true
      active_players = subject.active_players_by_position('midfielder')
      expect(active_players).to eql([@pogba])
    end
  end
end
