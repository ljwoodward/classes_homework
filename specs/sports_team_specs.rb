require "minitest/autorun"
require "minitest/rg"
require_relative "../sports_team.rb"

class TestSportsTeam < MiniTest::Test
  @team1

  def setup
    @team1 = SportsTeam.new("The Codeclan Ping-Pong All-Stars", ["Laurence", "Chris", "Aline", "Yoni", "Graeme", "Pete"], "Jarrod")
  end

  def test_get_team_name
    assert_equal(@team1.get_team_name, "The Codeclan Ping-Pong All-Stars")
  end

  def test_get_team_members
    assert_equal(@team1.get_team_members, ["Laurence", "Chris", "Aline", "Yoni", "Graeme", "Pete"])
  end

  def test_get_coach_name
    assert_equal(@team1.get_coach_name, "Jarrod")
  end
end
