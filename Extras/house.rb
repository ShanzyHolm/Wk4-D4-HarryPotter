require_relative('../db/sql_runner')
require_relative('student.rb')

class House

  attr_accessor :name, :id

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @name = options['name']
    # @logo = options['logo']
  end

  def save()
    sql ="INSERT INTO houses (name)
    VALUES ($1) RETURNING *"
    values = [@name]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first()['id'].to_i()
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    result = houses.map { |house| House.new(house) }
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    house = SqlRunner.run(sql, values)
    result = House.new(house.first())
    return result
  end

  def house_sort()
    if @name == "Gryffindor"
      return "Your motivation in life is found in trusting her moral intuitions and going with your gut... #{student_name}, you belong in Gryffindor!!"
    elsif @name == "Hufflepuff"
      return "#{student_name}, you work hard, are patient, and value justice and loyalty... Hufflepuff is where #{student_name} belongs!"
    elsif @name == "Ravenclaw"
      return "You are intelligent, creativite, eager to learn, and witty. Ravenclaw is where you belong, #{student_name!}"
    else @name == "Slytherin"
      return "You are ambitious, cunning and resourceful... You will do anything to get your way! #{student_name}, Slytherin will help you on your way to greatness!"
    end
  end

end
