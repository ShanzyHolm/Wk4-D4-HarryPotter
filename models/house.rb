require_relative('../db/sql_runner')

class House

  attr_accessor :name, :id

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @name = options['name']
    # @logo = options['logo']
  end

  # def student_name()
  #   return "#{@first_name} #{@second_name}"
  # end

  def house_sort()
    if @name == "Gryffindor"
      return "Your motivation in life is found in trusting your moral intuitions and going with your gut... #{students.first_name}#{students.last_name}, you belong in Gryffindor!!"
    elsif @name == "Hufflepuff"
      return "#{students.first_name}#{students.last_name}, you work hard, are patient, and value justice and loyalty... Hufflepuff is where #{students.first_name}#{students.last_name} belongs!"
    elsif @name == "Ravenclaw"
      return "You are intelligent, creativite, eager to learn, and witty. Ravenclaw is where you belong, #{students.first_name}#{students.last_name}!"
    else @name == "Slytherin"
      return "You are ambitious, cunning and resourceful... You will do anything to get your way! #{students.first_name}#{students.last_name}, Slytherin will help you on your way to greatness!"
    end
  end

  def save()
    sql ="INSERT INTO houses (name)
    VALUES ($1) RETURNING *"
    values = [@name]
    house_data = SqlRunner.run(sql, values)
    @id = house_data.first()['id'].to_i()
  end

  def update()
    sql = "UPDATE houses SET name = $1 WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM houses WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
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

end
