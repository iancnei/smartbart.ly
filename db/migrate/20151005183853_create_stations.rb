class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.string :name
      t.string :address
      t.integer :latitude
      t.integer :longitude

      t.timestamps null: false
    end
  end
end
