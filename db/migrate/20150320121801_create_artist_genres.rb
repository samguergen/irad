        class CreateArtistGenres < ActiveRecord::Migration
          def change
            create_table :artist_genres |t|
            t.belongs_to
          end
        end
