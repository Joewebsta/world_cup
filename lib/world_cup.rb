class WorldCup
  attr_reader :year, :teams

  def initialize(year, *teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    alive_teams = teams.find_all { |team| team.eliminated? == false }
    alive_teams.flat_map { |team| team.players_by_position(position) }
  end
end

# require './lib/player'
# require './lib/team'

# france = Team.new('France')
# mbappe = Player.new({ name: 'Kylian Mbappe', position: 'forward' })
# pogba = Player.new({ name: 'Paul Pogba', position: 'midfielder' })
# france.add_player(mbappe)
# france.add_player(pogba)

# croatia = Team.new('Croatia')
# modric = Player.new({ name: 'Luka Modric', position: 'midfielder' })
# vida = Player.new({ name: 'Domagoj Vida', position: 'defender' })
# croatia.add_player(modric)
# croatia.add_player(vida)
# croatia.eliminated = true

# world_cup = WorldCup.new(2018, france, croatia)
# pp world_cup.active_players_by_position('midfielder')
