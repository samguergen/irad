class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :album

  def to_param
    "#{id}-#{title}"
  end
end