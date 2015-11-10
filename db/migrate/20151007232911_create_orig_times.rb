class CreateOrigTimes < ActiveRecord::Migration
  def change
    create_table :orig_times do |t|
      t.datetime :value
      t.integer :station_id
      t.integer :line_number
      t.integer :train_index

      t.timestamps null: false
    end
  end
end
