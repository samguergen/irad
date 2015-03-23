require 'sinatra'

get '/genres' do
  @all_genres = Genre.all
  erb :'genres/index'
end

get '/genres/new' do
  erb :'genres/new'
end

get '/genres/:id' do
  @cur_genre = Genre.find_by(:id => params[:id])
  @artist_genres = ArtistGenre.find_by(:genre_id => params[:id])
  erb :'genres/show'
end

post '/genres' do
  if Genre.find_by(:name => params[:name])
    [404, "#{params[:name]} already exists!"]
  else
    @new_genre = Genre.create(:name => params[:name])
    redirect '/genres'
  end

end

delete '/genres/:id/delete' do
  @genre_to_delete = Genre.find_by(:id => params[:id])
  @genre_to_delete.destroy

  redirect '/genres'
end