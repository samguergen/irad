class CreateSealions < ActiveRecord::Migration
  def change
    create_table :sealions do |t|
      t.string :name, null: false, limit: 200
      t.integer :age
      t.text :quirk

      t.timestamps
    end
  end
end
