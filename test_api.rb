require 'minitest/autorun'
require_relative 'api'

class StudentsTest < Minitest::Test

  def test_student_number
    students = StudentsAPI.new
    assert_equal 5, students.get_number
  end

  def test_pass
    assert_equal 1,1
  end

end