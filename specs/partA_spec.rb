require('minitest/autorun')
require('minitest/reporters')
require_relative('../partA.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestClasses < Minitest::Test

    def test_get_student_name()
        student = Student.new("Stephen", "E41")
        assert_equal("Stephen", student.student_name())
    end

    def test_get_cohort()
        student = Student.new("Stephen", "E41")
        assert_equal("E41", student.cohort())
    end

    def test_set_student_name()
        student = Student.new("Stephen", "E41")
        student.set_student_name("Bob")
        assert_equal("Bob", student.student_name())
    end

    def test_set_cohort()
        student = Student.new("Stephen", "E41")
        student.set_cohort("E01")
        assert_equal("E01", student.cohort())
    end

    def test_talk()
        student = Student.new("Stephen", "E41")
        new_string = student.talk("I can talk!")
        assert_equal("I can talk!", student.talk(new_string))
    end

    
end