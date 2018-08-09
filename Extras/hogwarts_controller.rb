require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/student.rb')
also_reload('./models/*')

# INDEX
get '/students' do
  @students = Student.all()
  erb (:index)
end

# NEW
get '/students/new' do
  erb (:new)
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

get '/house/:options' do
  house_array = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]
  sort = House.new(:options = house.sample())
  @comparison = sort.house_sort()
  erb(:sort)
end
