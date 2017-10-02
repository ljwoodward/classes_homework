class SportsTeam
  attr_reader :team_name, :players
  attr_accessor :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  # def get_team_name
  #   return @team_name
  # end
  #
  # def get_team_members
  #   return @players
  # end
  #
  # def get_coach_name
  #   return @coach
  # end
  #
  # def set_coach_name(name)
  #   @coach = name
  # end
end
