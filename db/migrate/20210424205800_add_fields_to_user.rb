class AddFieldsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :role, :integer
    add_column :users, :username, :string
    add_column :users, :name, :string
  end
end
