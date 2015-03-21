require 'sinatra'

get '/artists' do
  erb :'artists/index', locals: {all_artists: Artist.all}
end

post '/artists' do

  label = params[:record_label].strip if params[:record_label]
  genre = params[:genre].strip.downcase if params[:genre]

  new_artist = Artist.create(
                          moniker: params[:moniker],
                          birth_name:params[:birth_name],
                          age: params[:age],
                          description: params[:description]
                          )

  if RecordLabel.find_by(name: label)
    valid_label = Label.find_by(name: label)
    new_artist.record_label_id = valid_label.id
  else
    "that record label is not in the database"
    # eventually this should reroute to a 'create new label' page
  end

  if Genre.find_by(name: genre)
    valid_genre = Genre.find_by(name: genre)
    new_artist << valid_genre
  else
    "that genre is not in the database"
    # this should reroute to a 'create new genre' page
  end

end

