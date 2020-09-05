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

  def all_players_by_position
    teams.flat_map(&:players).group_by(&:position)
  end
end