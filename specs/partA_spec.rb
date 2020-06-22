require('minitest/autorun')
require('minitest/reporters')
require_relative('../partA.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestClasses < Minitest::Test

    def test_get_student_name()
        student_name = Student.new("Stephen", "E41")
        assert_equal("Stephen", student_name.student_name())
    end

    
end