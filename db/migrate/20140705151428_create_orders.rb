class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :address
      t.string :pickup_date
      t.string :pickup_time
      t.string :return_date
      t.string :return_time
      t.string :instructions
      t.boolean :dry_cleaning
      t.boolean :wash
      t.references :client, index: true
      t.references :cleaner, index: true
      t.references :driver, index: true

      t.timestamps
    end
  end
end
