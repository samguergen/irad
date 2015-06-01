class CreateArtistGenres < ActiveRecord::Migration
  def change
    create_table :artist_genres do |t|
      t.references :artist, index: true
      t.references :genre, index: true

      t.timestamps null: false
    end
  end
end
