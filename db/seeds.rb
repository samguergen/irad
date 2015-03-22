# types = { genre_1: {name: "jazz"},
#            genre_2: {name: "hip hop"},
#            genre_3: {name: "rock"},
#            genre_4: {name: "country"}
#          }

# types.each do |key, value|
#   Genre.create!(value)
# end

# labels = { labe1_1: {name: "Universal Music Group", founding_date: "2000-03-20" },
#                   labe1_2: {name: "Warner Music Group", founding_date: "1970-03-22" },
#                   labe1_3: {name: "Independent UK", founding_date: "1990-04-14" },
#                   labe1_4: {name: "Huge Fake Label Music Group", founding_date: "1980-02-01" }
# }

# labels.each do |key, value|
#   RecordLabel.create!(value)
# end

# Artist.create!({:moniker => "Frank Sinatra", :birth_name => "Francis Sinatranoli", :age => 82, :description => "Ol Blue Eyes", :genres => [Genre.find_by(:name => "jazz")], :record_label_id => 1})
Artist.create!({moniker: "Lady Gaga", birth_name: "Stefani Joanne Angelina Germanotta", age: 28, description: "flamboyant and diverse contributions to the music industry via her fashion, live performances, and music videos"})
# Artist.create!({moniker: "Jay Z", birth_name: "Shawn Corey Carter", age:45, description: "One of the most financially successful hip-hop artists and entrepreneurs in America."})
# Artist.create!({moniker: "Katy Perry", birth_name: "Katheryn Elizabeth Hudson", age: 30, description: "Kim Jong Un's favorite artist."})

# albums = { album_1: {title: "Frank's Best", release_date: "1999-09-02", artist_id: 1},
#            album_2: {title: "Fame Monster", release_date: "2009-04-12", artist_id: 2},
#            album_3: {title: "Best of Jay Z", release_date: "2006-1-22", artist_id: 3},
#            album_4: {title: "Katy's Album", release_date: "2014-04-09", artist_id: 4}
# }

# albums.each do |key, value|
#   Album.create!(value)
# end

# Genre.create!(name: "Pop")

# ArtistGenre.create!(artist_id: 1, genre_id: 1)
# ArtistGenre.create!(artist_id: 2, genre_id: 5)
# ArtistGenre.create!(artist_id: 3, genre_id: 2)
# ArtistGenre.create!(artist_id: 4, genre_id: 5)




