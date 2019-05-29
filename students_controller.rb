require('sinatra')
require('sinatra/contrib/all')
require('pry')
require_relative('models/student.rb')
also_reload('models/*')

get '/students' do
  @students = Student.all()
  erb(:index)
end

get '/students/new' do
  @student = Student.new(params)
  erb(:new)
end

post '/students/' do
  @student = Student.new(params)
  @student.save()
  erb(:create)
end
