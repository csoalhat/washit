class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :address
      t.datetime :pickup_time
      t.datetime :return_time
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
