class CreateAvailableSlots < ActiveRecord::Migration
  def change
    create_table :available_slots do |t|
      t.datetime :begin
      t.datetime :end
      t.boolean :free
      t.integer :client_id
      t.integer :driver_id
      t.integer :cleaner_id
      t.integer :area_id
    end
  end
end
