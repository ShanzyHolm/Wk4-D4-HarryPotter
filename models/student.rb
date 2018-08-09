require_relative('../db/sql_runner')

class Student

  attr_accessor :first_name, :second_name, :house_id, :age

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @first_name = options['first_name']
    @second_name = options['second_name']
    @house_id = options['house_id'].to_i()
    @age = options['age'].to_i()
  end

  def save()
    sql ="INSERT INTO students (first_name, second_name, house_id, age)
    VALUES ($1, $2, $3, $4) RETURNING *"
    values = [@first_name, @second_name, @house_id, @age]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first()['id'].to_i()
  end

  def update()
    sql = "UPDATE students SET (first_name, second_name, house_id, age) = ($1, $2, $3, $4) WHERE id = $5"
    values = [@first_name, @second_name, @house_id, @age, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM students WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM students"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM students"
    students = SqlRunner.run(sql)
    result = students.map { |student| Student.new(student) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = $1"
    values = [id]
    student = SqlRunner.run(sql, values)
    result = Student.new(student.first())
    return result
  end

  def student_name()
    return "#{@first_name} #{@second_name}"
  end

  def house()
    sql = "SELECT houses.name FROM houses INNER JOIN students on houses.id = students.house_id WHERE students.id = $1"
    values = [@id]
    result = SqlRunner.run(sql, values)
    return result
  end

end
