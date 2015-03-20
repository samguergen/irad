        class CreateArtists < ActiveRecord::Migration
          def change
            create_table :artists do |t|
              t.references :record_label
              t.string :moniker, null: false
              t.string :birth_name
              t.integer :age, null: false
              t.text :description, null: false

              t.timestamps
            end
          end
        end
