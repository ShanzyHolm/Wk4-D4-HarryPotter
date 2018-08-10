require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/SH-sort.rb')
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

# get '/SH' do
#   erb(:SHhome)
# end

get '/SH/sort' do
  erb(:SHsort)
end

# get '/result' do
#   erb(:result)
# end

post '/SH/result' do
  house_array = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]
  sort = Sort.new(house_name = house_array.sample())
  @sort = sort.house_sort()
  erb(:SHresult)
end

# INDEX
get '/students' do
  @students = Student.all()
  erb (:index)
end

# NEW
# get '/students/new' do
#   @houses = House.all()
#   erb (:new)
# end

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
