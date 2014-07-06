class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :address
      t.date :pickup_date
      t.time :pickup_time
      t.date :return_date
      t.time :return_time
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
