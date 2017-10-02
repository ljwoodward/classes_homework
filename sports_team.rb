class SportsTeam
  attr_reader :team_name, :players, :points
  attr_accessor :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
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

  def win_lose_or_draw(result)
    case result
    when "win"
      @points += 3
    when "draw"
      @points += 1
    when "lose"
      @points += 0
    end

  end
end
