class AddIdColumnToLocations < ActiveRecord::Migration
  def change
  	  def change
    add_column :locations, :category_id, :integer
  end
  end
end
