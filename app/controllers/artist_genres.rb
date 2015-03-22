require 'sinatra'

get '/artist_genres/:artist_id/edit' do
  @artist_to_edit = Artist.find_by(:id => params[:artist_id])
  erb :'artist_genres/edit'
end

put '/artist_genres/:artist_id' do
  @artists_genres_array = Artist.find_by(:id => params[:artist_id]).genres

  if params[:genre_name] == ""
    [404, "Sorry, something went wrong."]
  else
    @artists_genres_array << Genre.find_or_create_by(:name => params[:genre_name])
    redirect "/artists/#{params[:artist_id]}"
  end
end

