class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :area
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :car
      t.string :availability

      t.timestamps
    end
  end
end
