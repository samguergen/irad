class Genre < ActiveRecord::Base
  has_many :artist_genres
  has_many :artists, through: :artist_genres

  before_validation :format_name

  def downcase_name
    self.name.downcase!
  end

  def strip_whitespace
    self.name.strip!
  end

  def format_name
    strip_whitespace
    downcase_name
  end

end