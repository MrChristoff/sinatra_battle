require 'sinatra'

get '/' do
  "Hello!"
end

get '/random-cat' do
  @name = ["Earl", "Billy-Bob", "Gordon", "Phylis", "Alan", "Cranky-pants"].sample
  erb(:index)
end

get '/named-cat' do
  p @name = params[:name]
  erb(:index)
end

get '/name_test' do
  @name = params[:name]
  erb(:name_test)
end
