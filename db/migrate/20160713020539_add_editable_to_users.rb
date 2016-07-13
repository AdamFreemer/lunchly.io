class AddEditableToUsers < ActiveRecord::Migration
  def change
    add_column :users, :can_edit, :boolean
  end
end
