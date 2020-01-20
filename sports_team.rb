class SportsTeam

  attr_reader :team_name
  attr_writer
  attr_accessor :players, :coach, :points

def initialize(team_name, players, coach, points)
  @team_name = team_name
  @players = players
  @coach = coach
  @points = points
end

  # def team_name
  #   return @team_name
  # end
  #
  # def return_players
  #   return @players
  # end
  #
  # def return_coach
  #   return @coach
  # end

  def set_coach_name(new_coach)
    @coach = new_coach
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def check_for_player(player_name)
    for player in @players
      if player == player_name
        return true
      end
    end
  end

  def team_result_points(result, points)
    if result == "win"
      @points += points
    end
    if result == "loose"
      @points -= points
    end
  end






end
