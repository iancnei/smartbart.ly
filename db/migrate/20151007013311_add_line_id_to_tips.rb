class AddLineIdToTips < ActiveRecord::Migration
  def change
    add_column :tips, :line_id, :integer
  end
end
