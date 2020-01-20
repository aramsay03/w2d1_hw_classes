require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../codeclan_student')

class TestStudent < Minitest::Test

  def setup
    @student = Student.new("Alan", "e37")
  end

  def test_student_name
    assert_equal("Alan", @student.student_name)
  end

  def test_student_cohort
    assert_equal("e37", @student.student_cohort)
  end

  def test_set_student_name
    @student.set_student_name("Noel")
    assert_equal("Noel", @student.student_name)
  end

  def test_set_cohort
    @student.set_cohort("e41")
    assert_equal("e41", @student.student_cohort)
  end

  def test_student_can_talk
    assert_equal("I can talk", @student.talk())
  end

  def test_say_favorite_language
    assert_equal("I love Ruby", @student.i_love_ruby())
  end

end
