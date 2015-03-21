require 'sinatra'

get '/artists' do
  erb :'artists/index', locals: {all_artists: Artist.all}
end
