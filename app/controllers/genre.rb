require 'sinatra'

get '/genres' do
  @all_genres = Genre.all
  erb :'genres/index'
end

get '/genres/:id' do
  @cur_genre = Genre.find_by(:id => params[:id])
  @artist_genres = ArtistGenre.find_by(:genre_id => params[:id])
  erb :'genres/show'
end
