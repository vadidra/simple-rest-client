require 'rest-client'
require 'json'
require_relative 'student'

URL = 'https://spring-boot-students.herokuapp.com/api/students'

class StudentsAPI

  def initialize(url)
    @url = url
    response = RestClient.get @url, {accept: :json}
    student_data = JSON.parse(response.body)
    @students_array = []
    student_data.each do |student1|
      @students_array << Student.new(student1['id'], student1['firstName'], student1['lastName'], student1['course'])
    end
  end

  def get_list
    @students_array
  end

  def get_number
    @students_array.length
  end
end


students = StudentsAPI.new URL
puts students.get_list
puts students.get_number