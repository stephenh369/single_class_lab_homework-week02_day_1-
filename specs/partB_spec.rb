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
end