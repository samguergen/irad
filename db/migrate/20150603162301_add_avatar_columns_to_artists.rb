class AddAvatarColumnsToArtists < ActiveRecord::Migration
  def up
    add_attachment :artists, :avatar
  end

  def down
    remove_attachment :artists, :avatar
  end
end
