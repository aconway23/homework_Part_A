require('minitest/autorun')
require ('minitest/rg')
require_relative('./homework_Part_B.rb')


class TestTeam < MiniTest::Test
  @team

  def setup
    @team = Team.new('Arsenal', ['Sanchez', 'Giroud', 'Ozil'], 'Coach')
  end


  def test_team_name
    assert_equal('Arsenal', @team.name)
    end

    def test_players
      assert_equal(['Sanchez', 'Giroud', 'Ozil'], @team.players)
    end

    def test_coach
      assert_equal('Coach', @team.coach)
    end

    def test_set_coach_name
      @team.coach='Arsene Wenger'
      assert_equal('Arsene Wenger', @team.coach)
    end

    def test_add_player
      @team.players='Walcott'
      assert_equal('Walcott', @team.players)
    end




end
