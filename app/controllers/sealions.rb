require 'sinatra'

get '/sealions' do
  'Welcome to the Sealions page!'
end

post '/sea_post' do
  redirect '/sealions'
end

