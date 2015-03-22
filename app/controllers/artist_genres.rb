require 'sinatra'

get '/artist_genres/:id/edit' do
  @artist_to_edit = Artist.find_by(:id => params[:id])
  erb :'artist_genres/edit'
end