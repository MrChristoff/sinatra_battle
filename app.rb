require 'sinatra'

get '/' do
  "Hello!"
end

get '/cat' do
  @random_name = ["Earl", "Billy-Bob", "Gordon"].sample
  erb(:index)
end
