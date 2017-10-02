class SportsTeam
  attr_reader :team_name, :players
  attr_accessor :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def add_new_player(player)
    @players << player
  end

  def search_players(name)
      if @players.include?(name)
        return true
      else
        return false
      end

  end
end
