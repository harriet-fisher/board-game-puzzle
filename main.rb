require 'sinatra'

get '/' do
  erb :index
end

get '/enter-password' do
  erb(:password_input)
end

post '/check' do
  if params['password'] == 'lionspawcove'
    erb :success
  elsif params['password'] == 'LIONSPAWCOVE'
    erb :success
  else
    erb :failure
  end
end