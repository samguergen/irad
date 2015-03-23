 get '/artists/:id/albums' do
 	@artist_to_edit = Artist.find_by(:id => params[:id])
 	erb :'albums/index'
 end

 get '/artists/:id/albums/new' do
  @the_artist = Artist.find_by(:id => params[:id])
 	erb :'albums/new'
 end

get '/artists/:id/albums/:id' do
  @album = Album.find_by(:id => params[:id])
  erb :'albums/show'
end

get '/artists/:id/albums/:id/edit' do
	@album = Album.find_by(:id => params[:id])
  @the_artist = Artist.find_by(:id => @album.artist.id)
	erb :'albums/edit'
end

put '/artists/:id/albums/:id' do
  @album_to_update = Album.find_by(:id => params[:id])
  @the_artist = Artist.find_by(:id => @album_to_update.artist.id)
	if @album_to_update
		@album_to_update.title = params[:title]
		@album_to_update.release_date = params[:release_date]
		if @album_to_update.save
			redirect "/artists/#{@the_artist.id}/albums"
    	else
      		[500, "Something went wrong!"]
   		end
  	else
    	[404, "That artist does not exist"]
  	end
end


post '/artists/:id/albums' do

 	@new_album = Album.new(
 							:artist_id => params[:id],
 							:title => params[:title],
 							:release_date => params[:release_date]
 	)

	if @new_album.save
		redirect "/artists/#{params[:id]}"
	else
		[500, "Something went wrong!"]
	end
end

delete '/artists/:id/albums/delete' do
  	@album_to_delete = Album.find_by(:id => params[:id])
	@album_to_delete.destroy

	redirect '/artists/:id/albums'
end