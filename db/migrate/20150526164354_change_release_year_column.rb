class ChangeReleaseYearColumn < ActiveRecord::Migration
  def change
    change_column :albums, :release_year, :string
  end
end
