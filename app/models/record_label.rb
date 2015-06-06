class RecordLabel < ActiveRecord::Base
  has_many :artists

  validates :name, presence: true
  validates :name, uniqueness: {case_sensitive: false}

  def display_founding_date
    if founding_date != nil
      "Since #{founding_date}"
    end
  end
end