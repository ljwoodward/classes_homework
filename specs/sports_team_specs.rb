require "minitest/autorun"
require "minitest/rg"
require_relative "../sports_team.rb"

class TestSportsTeam < MiniTest::Test
  @team1

  def setup
    @team1 = SportsTeam.new("The Codeclan Ping-Pong All-Stars", ["Laurence", "Chris", "Aline", "Yoni", "Graeme", "Pete"], "Jarrod")
  end

  def test_get_team_name
    assert_equal(@team1.team_name, "The Codeclan Ping-Pong All-Stars")
  end

  def test_get_team_members
    assert_equal(@team1.players, ["Laurence", "Chris", "Aline", "Yoni", "Graeme", "Pete"])
  end

  def test_get_coach_name
    assert_equal(@team1.coach, "Jarrod")
  end

  def test_set_coach_name
    @team1.coach = "Sandy"
    assert_equal(@team1.coach, "Sandy")
  end

  def test_add_new_player
    @team1.add_new_player("Kayla")
    assert_equal(@team1.players, ["Laurence", "Chris", "Aline", "Yoni", "Graeme", "Pete", "Kayla"])
  end

  def test_search_players__true
    assert_equal(@team1.search_players("Chris"), true)
  end

  def test_search_players__false
    assert_equal(@team1.search_players("Tony"), false)
  end

  def test_win_lose_or_draw__win
    @team1.win_lose_or_draw("win")
    assert_equal(@team1.points, 3)
  end

  def test_win_lose_or_draw__lose
    @team1.win_lose_or_draw("lose")
    assert_equal(@team1.points, 0)
  end

  def test_win_lose_or_draw__draw
    @team1.win_lose_or_draw("draw")
    assert_equal(@team1.points, 1)
  end

end
