class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.references :artist, index: true, null: false
      t.references :album, index: true, null: false
      t.string :title, null: false, limit: 256
      t.text :lyrics

      t.timestamps null: false
    end
  end
end
