class AddRoleToUsers < ActiveRecord::Migration
  def up
    add_column :users, :role, :string
  end
end
