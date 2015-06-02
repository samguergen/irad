class RecordLabel < ActiveRecord::Base
  has_many :artists

  validates :name, uniqueness: {case_sensitive: false}
end