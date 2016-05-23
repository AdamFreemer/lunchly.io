class CreateCategoriesTable < ActiveRecord::Migration
  def change
    create_table :categories_tables do |t|
   	  t.string :name
      t.text :comment
    end
  end
end
