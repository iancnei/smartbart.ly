class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :description
      t.integer :user_id
      t.integer :station_id

      t.timestamps null: false
    end
  end
end
