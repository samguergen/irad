class Artist < ActiveRecord::Base
  belongs_to :record_label
  has_many :albums
  has_many :artist_genres
  has_many :genres, through: :artist_genres
  has_many :songs

  validates :stage_name, uniqueness: {case_sensitive: false}

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

  def to_param
    "#{id}-#{stage_name.parameterize}"
  end

  def calculate_age
    unless date_of_birth == nil
      ave_seconds_in_a_year = 31536000
      age_as_float = (Time.now - date_of_birth) / ave_seconds_in_a_year
      age_as_float.floor
    end
  end

  def birthday
    unless date_of_birth == nil
      dob = date_of_birth.strftime("%A, %B %d, %Y")
    else
      'none listed'
    end
  end

  def display_birth_info
    "#{birthday} (Age:#{calculate_age || "N/A"})"
  end
end