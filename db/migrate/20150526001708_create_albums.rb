class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.references :artist, null: false, index: true
      t.string :title, null: false, limit: 256
      t.date :release_year
      t.text :description

      t.timestamps null: false
    end
  end
end
