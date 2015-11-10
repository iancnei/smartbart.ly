class AddAbbreviationToStations < ActiveRecord::Migration
  def change
    add_column :stations, :abbreviation, :string
  end
end
