class RecordLabel < ActiveRecord::Base
  has_many :artists

  validates :name, presence: true
  validates :name, uniqueness: {case_sensitive: false}
end