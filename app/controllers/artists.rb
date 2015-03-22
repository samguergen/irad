require 'sinatra'

get '/artists' do
  @all_artists = Artist.all
  erb :'artists/index'
end

get '/artists/new' do
  erb :'artists/new'
end

get '/artists/:id/edit' do
  @artist_to_edit = Artist.find_by(:id => params[:id])
  erb :'artists/edit'
end

get '/artists/:id' do
 @the_artist = Artist.find_by(:id => params[:id])
 erb :'artists/show'
end

put '/artists/:id' do
  label = RecordLabel.find_or_create_by(:name => params[:record_label].strip)


  @artist_to_update = Artist.find_by(:id => params[:id])
  if @artist_to_update
    @artist_to_update.moniker = params[:moniker]
    @artist_to_update.birth_name = params[:birth_name]
    @artist_to_update.age = params[:age]
    @artist_to_update.description = params[:description]
    @artist_to_update.record_label_id = label.id
          # if label.name == ""
          #   label.name = "Working!"
          # end

    if @artist_to_update.save
      redirect "/artists/#{params[:id]}"
    else
      [500, "Something went wrong!"]
    end
  else
    [404, "That artist does not exist"]
  end
end

post '/artists' do

  label = RecordLabel.find_or_create_by(:name => params[:record_label].strip)
  genre = Genre.find_or_create_by(:name => params[:genre].strip)

  @new_artist = Artist.new(
                          :moniker => params[:moniker],
                          :birth_name => params[:birth_name],
                          :age => params[:age],
                          :description => params[:description],
                          :genres => [genre],
                          :record_label_id => label.id
                          )

  if @new_artist.save
    redirect "/artists/#{@new_artist.id}"
  else
    [404, "This artist couldn't be created."]
  end

end


delete '/artists/:id/delete' do
  @artist_to_delete = Artist.find_by(:id => params[:id])
  @artist_to_delete.destroy

  redirect '/artists'
end

