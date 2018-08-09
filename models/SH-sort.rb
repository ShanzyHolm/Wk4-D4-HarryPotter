class Sort

  attr_accessor :house_name

  def initialize(house_name)
    @house_name = house_name
  end

  # def student_name()
  #   return "#{@first_name} #{@last_name}"
  # end

  def house_sort()
    if @house_name == "Gryffindor"
      return "Your motivation in life is found in trusting her moral intuitions and going with your gut... #{@student.student_name()}, you belong in Gryffindor!!"
    elsif @house_name == "Hufflepuff"
      return "#{@student.student_name()}, you work hard, are patient, and value justice and loyalty... Hufflepuff is where #{@student.student_name()} belongs!"
    elsif @house_name == "Ravenclaw"
      return "You are intelligent, creativite, eager to learn, and witty. Ravenclaw is where you belong, #{@student.student_name()}!"
    else @house_name == "Slytherin"
      return "You are ambitious, cunning and resourceful... You will do anything to get your way! #{@student.student_name()}, Slytherin will help you on your way to greatness!"
    end
  end
end
