require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')

get('/') do
  erb(:index)
end

get('/title') do
  @player_choice= params.fetch('inputForm')
  #@computer_choice = params.fetch('inputForm').rnd_choice()
  @result= params.fetch('inputForm').beats("")
  erb(:title)
end
