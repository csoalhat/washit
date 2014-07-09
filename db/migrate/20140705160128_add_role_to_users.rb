class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :zipcode, :string
    add_column :users, :city, :string
    add_column :users, :phone, :string
    add_column :users, :area, :string
    add_column :users, :lat, :string
    add_column :users, :lng, :string
    add_column :users, :default_provider_id, :integer
  end
end
