require 'sinatra'

get '/artists' do
  @all_artists = Artist.all
  erb :'artists/index'
end

get '/artists/new' do
  erb :'artists/new'
end

get '/artists/:id' do
 @the_artist = Artist.find_by(:id => params[:id])
 erb :'artists/show'
end

post '/artists' do

  label = RecordLabel.find_or_create_by(name: params[:record_label].strip)
  genre = Genre.find_or_create_by(name: params[:genre].strip)

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

