        class CreateRecordAlbums < ActiveRecord::Migration
          def change
            create_table :albums do |t|
              t.references :artist, null: false
              t.string :title, null: false
              t.date :release_date
            end
          end
        end
