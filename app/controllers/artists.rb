require 'sinatra'

get '/artists' do
  erb :'artists/index', locals: {all_artists: Artist.all}
end

post '/artists' do
  label = params[:record_label].strip
  new_artist = Artist.new(moniker: params[:moniker], birth_name:params[:birth_name], age: params[:age], description: params[:description], record_label: artist_label)
  genre = params[:genre].strip.downcase

  if Genre.find_by(name: genre)
    valid_genre = Genre.find_by(name: genre)
    new_artist << valid_genre
  else
    Genre.create(name: genre)
  end

end

