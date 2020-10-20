require 'rest-client'
require_relative 'student'

URL = 'https://spring-boot-students.herokuapp.com/api/students'

class StudentsAPI

  def initialize(url)
    @url = url
  end

  def get_list
    response = RestClient.get @url
    response.body
  end
end


students = StudentsAPI.new URL
list1 = students.get_list
puts list1