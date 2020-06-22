require('minitest/autorun')
require('minitest/reporters')
require_relative('../partB.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestClasses < Minitest::Test

    def test_get_team_name()
        new_team = Team.new("The not very good team", ["Stephen", "Bob", "John"], "Your dad")
        assert_equal("The not very good team", new_team.name())
    end

    def test_get_players()
        new_team = Team.new("The not very good team", ["Stephen", "Bob", "John"], "Your dad")
        assert_equal(["Stephen", "Bob", "John"], new_team.players())
    end

    def test_get_coach()
        new_team = Team.new("The not very good team", ["Stephen", "Bob", "John"], "Your dad")
        assert_equal("Your dad", new_team.coach())
    end

    def test_set_coach()
        new_team = Team.new("The not very good team", ["Stephen", "Bob", "John"], "Your dad")
        coach = ("Uncle Jimmy")
        assert_equal("Uncle Jimmy", coach)
    end

    def test_add_player()
        new_team = Team.new("The not very good team", ["Stephen", "Bob", "John"], "Your dad")
        new_players = new_team.add_player("Your gran")
        assert_equal(["Stephen", "Bob", "John", "Your gran"], new_players)
    end
end