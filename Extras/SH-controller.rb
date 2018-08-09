require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('models/SH-sort.rb')
require_relative('models/student.rb')
require_relative('models/house.rb')
also_reload('models/*')

get '/SH' do
  erb(:home)
end

get '/SH/sort' do
  erb(:sort)
end

# get '/result' do
#   erb(:result)
# end

post '/SH/result' do
  house_array = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]
  sort = Sort.new(house_name = house_array.sample())
  @sort = sort.house_sort()
  erb(:result)
end

# get '/house/:options' do
#   house_array = ["Gryffindor", "Hufflepuff", "Ravenclaw", "Slytherin"]
#   sort = Sort.new(:options = house_array.sample())
#   @comparison = sort.house_sort()
#   erb(:sort)
# end

# get '/students/sort' do
#   @student = Student.new(params)
#   @house.house_sort()
#   @student.save()
#   erb (:result)
# end


# binding.pry
# nil
