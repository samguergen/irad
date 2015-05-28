class Artist < ActiveRecord::Base
  belongs_to :record_label
  has_many :albums
  has_many :artist_genres
  has_many :genres, through: :artist_genres
  has_many :songs

  def all_genres
    if self.genres.count < 1
      'add genres'
    else
      self.genres.map{|genre|genre.name}.join(', ')
    end
  end

  def update_genres(genres_array)
    genre_objects_array = genres_array.map do |genre_name|
      Genre.find_or_create_by(name: genre_name)
    end

    genre_objects_array.each do |genre|
      unless self.genres.include?(genre)
        self.genres << genre
      end
    end
  end

end