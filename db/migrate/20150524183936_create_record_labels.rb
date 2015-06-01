class CreateRecordLabels < ActiveRecord::Migration
  def change
    create_table :record_labels do |t|
      t.string :name, null: false
      t.string :founding_date

      t.timestamps null: false
    end
  end
end
