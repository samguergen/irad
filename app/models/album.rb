class Album < ActiveRecord::Base
  belongs_to :artist
  has_many :songs

  def to_param
    "#{id}-#{title}"
  end

end