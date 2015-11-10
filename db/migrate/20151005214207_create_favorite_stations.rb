class CreateFavoriteStations < ActiveRecord::Migration
  def change
    create_table :favorite_stations do |t|

      t.timestamps null: false
      t.references :user
      t.references :station
    end
  end
end
