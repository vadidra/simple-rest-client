require 'rest-client'
require 'json'
require_relative 'student'

URL = 'https://spring-boot-students.herokuapp.com/api/students'

class StudentsAPI

  def initialize(url)
    @url = url
  end

  def get_list
    response = RestClient.get @url, {accept: :json}
    student_data = JSON.parse(response.body)
    students_array = []
    student_data.each do |student1|
        students_array << Student.new(student1['id'], student1['firstName'], student1['lastName'], student1['course'])
        end
    students_array
  end
end


students = StudentsAPI.new URL
list1 = students.get_list
puts list1