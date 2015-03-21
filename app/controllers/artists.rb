require 'sinatra'

get '/artists' do
  @all_artists = Artist.all
  erb :'artists/index'
end

get '/artists/new' do
  erb :'artists/new'
end

get '/artists/:id' do
 @the_artist = params[:id]
 erb :'artists/show'
end

post '/artists' do

  label = RecordLabel.find_or_create_by(name: params[:record_label].strip)
  # genre = params[:genre].strip.downcase if params[:genre]

  # new_artist = Artist.create(
  #                         moniker: params[:moniker],
  #                         birth_name:params[:birth_name],
  #                         age: params[:age],
  #                         description: params[:description],
  #                         genre: params[:genre]
  #                         )



  @new_artist = Artist.new(
                          :moniker => params[:moniker],
                          :birth_name => params[:birth_name],
                          :age => params[:age],
                          :description => params[:description],
                          :genres => [Genre.find_or_create_by(:name => params[:genre])],
                          :record_label_id => label.id
                          )

  # if RecordLabel.find_by(name: label)
  #   valid_label = Label.find_by(name: label)
  #   new_artist.record_label_id = valid_label.id
  # else
  #   [500,"that record label is not in the database"]
  #   # eventually this should reroute to a 'create new label' page
  # end

  # if Genre.find_by(name: genre)
  #   valid_genre = Genre.find_by(name: genre)
  #   new_artist << valid_genre
  # else
  #   [404,"that genre is not in the database"]
  #   # this should reroute to a 'create new genre' page
  # end


  if @new_artist.save
    redirect "/artists/#{@new_artist.id}"
  else
    [404, "This artist couldn't be created."]
  end

end

