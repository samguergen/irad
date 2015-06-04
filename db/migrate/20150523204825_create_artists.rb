class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.references :record_label
      t.string :stage_name, null: false
      t.string :birth_name
      t.datetime :date_of_birth
      t.text :description, null: false

      t.timestamps null: false
    end
  end
end
