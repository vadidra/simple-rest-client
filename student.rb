class Student
  attr_reader :id, :first_name, :last_name, :course
  @id
  @first_name
  @last_name
  @course

  def initialize(id,first_name,last_name,course)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @course = course
  end

  def to_s
    "#{@id} #{@first_name} #{@last_name} #{@course}"
  end

end