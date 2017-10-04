class AddNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :biofield, :text
    add_column :users, :website, :string
    add_column :users, :location, :string
  end
end
