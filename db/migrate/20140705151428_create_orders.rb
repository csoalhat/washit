class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :pickup_time
      t.date :pickup_day
      t.date :return_day
      t.string :return_time
      t.string :instructions
      t.boolean :dry_cleaning
      t.boolean :wash
      t.string :status, default: "pending"
      t.string :price, index: "processing"
      t.integer :provider_id
      t.references :user, index: true

      t.timestamps
    end
  end
end
