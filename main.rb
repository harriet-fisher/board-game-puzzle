require 'sinatra'

get '/' do
  erb :index
end

post '/check' do
  if params['password'] == 'lionspawcove'
    erb :success
  else
    erb :failure
  end
end