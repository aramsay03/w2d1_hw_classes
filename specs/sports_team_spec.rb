require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../sports_team')
class TestSportsTeam < Minitest::Test

  def setup
    @team = SportsTeam.new("Muppets Mayhem", ["GG", "Noel", "Alan"], "Kermit", 0)
  end

  def test_team_name
    assert_equal("Muppets Mayhem", @team.team_name)
  end

  def test_return_players
    assert_equal(["GG", "Noel", "Alan"], @team.players)
  end

  def test_return_coach
    assert_equal("Kermit", @team.coach)
  end

  def test_set_coach_name
    @team.coach = "Cookie Monster"
    assert_equal("Cookie Monster", @team.coach)
  end

  def test_add_player
    @team.add_player("Luke")
    assert_equal(["GG", "Noel", "Alan", "Luke"], @team.players)
  end

  def test_check_for_player
    assert_equal(true, @team.check_for_player("Noel"))
  end

  def test_check_team_points
    assert_equal(0, @team.points)
  end

  def test_team_result_points__win
    @team.team_result_points("win", 5)
    assert_equal(5, @team.points)
  end

  def test_team_result_points__win
    @team.team_result_points("loose", 0)
    assert_equal(0, @team.points)
  end

  def test_team_result_points__win
    @team.team_result_points("loose", 5)
    assert_equal(-5, @team.points)
  end

end
