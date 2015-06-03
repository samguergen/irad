class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs

  validates :title, presence: true

  validates :title, uniqueness: {scope: :artist_id, case_sensitive: false,
    message: "Album already exists for this artist"}


  def to_param
    "#{id}-#{title}"
  end

end