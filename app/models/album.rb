class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs
  has_attached_file :avatar, styles: {
    medium: "300x300",
    thumb: "100x100" },
    default_url: "/images/:style/missing.png"

  validates_attachment :avatar, content_type: {
    content_type: [
      "image/jpeg",
      "image/gif",
      "image/png"
      ]
    }

  validates :title, presence: true

  validates :title, uniqueness: {scope: :artist_id, case_sensitive: false,
    message: "Album already exists for this artist"}


  def to_param
    "#{id}-#{title}"
  end

end