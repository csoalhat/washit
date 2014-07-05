class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :home_address
      t.string :home_address_zipcode
      t.string :home_address_city
      t.string :work_address
      t.string :work_address_zipcode
      t.string :work_address_city
      t.string :phone
      t.string :email
      t.references :user, index: true

      t.timestamps
    end
  end
end
