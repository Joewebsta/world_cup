class Team
  attr_reader :country, :eliminated, :players

  def initialize(country)
    @country = country
    @eliminated = false
    @players = []
  end

  def eliminated?
    eliminated
  end
end
