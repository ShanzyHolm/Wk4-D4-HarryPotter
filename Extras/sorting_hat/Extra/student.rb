class Student

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def student_name()
    @student = Student.new("#{@first_name} #{@last_name}")
    return @student
  end
end
