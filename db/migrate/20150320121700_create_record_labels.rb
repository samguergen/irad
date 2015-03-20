        class CreateRecordLabels < ActiveRecord::Migration
          def change
            create_table :record_labels do |t|
              t.string :name, null: false
              t.date :founding_date

              t.timestamps
            end
          end
        end
