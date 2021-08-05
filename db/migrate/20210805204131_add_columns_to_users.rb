class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :title, :string
    add_column :users, :manager, :string
  end
end
