require 'rest-client'
require 'json'
require_relative 'student'

URL = 'https://spring-boot-students.herokuapp.com/api/students'

class StudentsAPI

  def initialize()
    response = RestClient.get URL, {accept: :json}
    @student_data = JSON.parse(response.body)
    #@students_array = []
    #@student_data.each do |student1|
    #  @students_array << Student.new(student1['id'], student1['firstName'], student1['lastName'], student1['course'])
    #end
    @student_data.map{ |student1| Student.new(student1['id'], student1['firstName'], student1['lastName'], student1['course'])}
  end

  def all
    #@students_array
    @student_data
  end

  def number
    #@students_array.length
    @student_data.length
  end
end

if __FILE__ == $0
  students = StudentsAPI.new
  puts students.all
  puts students.number
end