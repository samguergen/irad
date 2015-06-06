class AddAvatarColumnToAlbums < ActiveRecord::Migration
  def up
    add_attachment :albums, :avatar
  end

  def down
    remove_attachment :albums, :avatar
  end

end
