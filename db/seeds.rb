require_relative("../models/student")
require_relative("../models/house")

# Student.delete_all()

house1 = House.new({
 "name" => "Gryffindor"
 })

house2 = House.new({
 "name" => "Ravenclaw"
 })


house3 = House.new({
 "name" => "Hufflepuff"
 })

house4 = House.new({
 "name" => "Slytherin"
 })

house1.save()
house2.save()
house3.save()
house4.save()

student1 = Student.new({
 "first_name" => "Jane",
 "second_name" => "Duncan",
 "house_id" => house1.id,
 "age" => "30"
 })

student2 = Student.new({
 "first_name" => "Shannon",
 "second_name" => "Holmes",
 "house_id" => house3.id,
 "age" => "34"
 })

student3 = Student.new({
 "first_name" => "Anne",
 "second_name" => "Ince",
 "house_id" => house2.id,
 "age" => "12"
 })

student4 = Student.new({
 "first_name" => "Andrew",
 "second_name" => "Craigie",
 "house_id" => house4.id,
 "age" => "14"
 })

student5 = Student.new({
 "first_name" => "Kirsty",
 "second_name" => "Bruce",
 "house_id" => house1.id,
 "age" => "32"
 })

student6 = Student.new({
 "first_name" => "Connie",
 "second_name" => "Leighton",
 "house_id" => house2.id,
 "age" => "11"
 })

student7 = Student.new({
 "first_name" => "Kasper",
 "second_name" => "Dzerins",
 "house_id" => house3.id,
 "age" => "13"
 })

student8 = Student.new({
 "first_name" => "Craig",
 "second_name" => "Bowditch",
 "house_id" => house4.id,
 "age" => "16"
 })

student9 = Student.new({
 "first_name" => "Rameez",
 "second_name" => "Tariq",
 "house_id" => house1.id,
 "age" => "12"
 })

student10 = Student.new({
 "first_name" => "Ricky",
 "second_name" => "Corrigan",
 "house_id" => house2.id,
 "age" => "14"
 })

student11 = Student.new({
 "first_name" => "Fraser",
 "second_name" => "Douglas",
 "house_id" => house3.id,
 "age" => "12"
 })

student12 = Student.new({
 "first_name" => "Pim",
 "second_name" => "Groeneveld",
 "house_id" => house4.id,
 "age" => "11"
 })

student13 = Student.new({
 "first_name" => "Fiona",
 "second_name" => "Wilson",
 "house_id" => house1.id,
 "age" => "13"
 })

student14 = Student.new({
 "first_name" => "Tanny",
 "second_name" => "Qureshi",
 "house_id" => house2.id,
 "age" => "14"
 })

student15 = Student.new({
 "first_name" => "Christian",
 "second_name" => "Geib",
 "house_id" => house3.id,
 "age" => "12"
 })

student16 = Student.new({
 "first_name" => "Robert",
 "second_name" => "Deignan",
 "house_id" => house4.id,
 "age" => "15"
 })

student17 = Student.new({
 "first_name" => "Sithara",
 "second_name" => "Sukumar",
 "house_id" => house1.id,
 "age" => "12"
 })

student18 = Student.new({
 "first_name" => "YingYing",
 "second_name" => "Chen",
 "house_id" => house2.id,
 "age" => "14"
 })

student1.save()
student2.save()
student3.save()
student4.save()
student5.save()
student6.save()
student7.save()
student8.save()
student9.save()
student10.save()
student11.save()
student12.save()
student13.save()
student14.save()
student15.save()
student16.save()
student17.save()
student18.save()
