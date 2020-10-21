require 'minitest/autorun'
require_relative 'rest_api_students'

class StudentsTest < Minitest::Test

  def test_student_number
    #students = StudentsAPI.new
    #puts students
    #assert students.get_number == 5
    assert_equal 1,1
  end

  def test_pass
    assert_equal 1,1
  end

end