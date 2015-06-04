require 'faker'

10.times do
  RecordLabel.create(name: "#{Faker::Company.name} Records", founding_date: "#{Faker::Date.backward(1000)}")
end

10.times do
  Genre.create(name: Faker::Commerce.department, description: Faker::Lorem.paragraph)
end

#generate a random DateTime object
def time_rand from = 0.0, to = Time.now
  Time.at(from + rand * (to.to_f - from.to_f))
end


artists = [
  {stage_name: 'Jimi Hendrix', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Bob Dylan', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Elvis Prestley', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Kurt Cobain', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Mick Jagger', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Aretha Franklin', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'John Lennon', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Amy Winehouse', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Paul McCartney', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'David Lee Roth', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Lady Gaga', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Beyonce', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Elton John', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Justin Bieber', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Neil Young', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Bono', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Chris Martin', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Kanye West', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Buddy Guy', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Stevie Wonder', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Ozzy Ozbourne', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Chuck Berry', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Angus Young', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Justin Timberlake', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Prince', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Cher', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Rihanna', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Eddie Vedder', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) },
  {stage_name: 'Brian Wilson', birth_name: "#{Faker::Name.first_name} #{Faker::Name.last_name}", date_of_birth: time_rand, record_label: RecordLabel.all.sample, description: Faker::Lorem.paragraph(2) }
]

artists.each do |artist_info|
  artist = Artist.create(artist_info)
  5.times do
    album = artist.albums.create(title: Faker::Company.catch_phrase, release_year: "#{rand(1950..2015)}", description: Faker::Lorem.paragraph)
    8.times do
      album.songs.create(artist: artist, title: Faker::Company.bs, lyrics: Faker::Lorem.paragraph)
    end
  end
  4.times do
    artist.genres << Genre.all.sample
  end
end
