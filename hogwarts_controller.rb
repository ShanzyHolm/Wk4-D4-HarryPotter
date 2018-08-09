require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/student.rb')
require_relative('./models/house.rb')
also_reload('./models/*')

# INDEX
get '/students' do
  @students = Student.all()
  erb (:index)
end

# NEW
get '/students/new' do
  @houses = House.all()
  erb (:new)
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
