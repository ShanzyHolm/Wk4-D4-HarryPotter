require('sinatra')
require('sinatra/contrib/all')
require('pry')

# require_relative('./models/SHsort.rb')
require_relative('./models/student.rb')
require_relative('./models/house.rb')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/students/new' do
  @houses = House.all()
  erb (:SHhome)
end

post '/students/result' do
  @student = Student.new(params)
  # house_array = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]
  # sort = House.new(house_name = house_array.sample())
  # @house_name = sort.house_sort()
  # @student_name = "#{@first_name} #{@second_name}"
  erb(:result)
end

get '/students/result' do
  @student_name = "#{@first_name} #{@second_name}"
  house_array = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]
  sort = House.new(house_name = house_array.sample())
  @house_name = sort.house_sort()
  return house_name
  @student.save()
  erb(:result)
end

get '/students/sort' do
  erb(:new)
end

# INDEX
get '/students' do
  @students = Student.all()
  erb (:index)
end

# SORT
get '/students/sort' do
  @student = Student.new(params)
  @house.house_sort()
  @student.save()
  erb (:result)
end

# CREATE
post '/students' do
  @student = Student.new(params)
  @student.save()
  erb (:create)
end

# IMAGES
get '/images/:file' do
  send_file File.expand_path(params[:file], settings.public_folder)
end



# NEW
# get '/students/new' do
#   erb (:new)
# end

# CREATE
# post '/students' do
#   @student = Student.new(params)
#   @student.save()
#   erb (:create)
# end

# get '/SH' do
#   erb(:SHhome)
# end

# NEW
# get '/students/new' do
#   @houses = House.all()
#   erb (:new)
# end

# get '/result' do
#   erb(:result)
# end
