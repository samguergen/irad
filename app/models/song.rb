class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :album

  validates :title, presence: true
  validates :title, uniqueness: {scope: :album_id, case_sensitive: false,
    message: "Song already exists on this album"}

  def to_param
    "#{id}-#{title}"
  end
end