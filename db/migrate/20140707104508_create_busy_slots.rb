class CreateBusySlots < ActiveRecord::Migration
  def change
    create_table :busy_slots do |t|
      t.datetime :begin
      t.datetime :end
      t.boolean :free
      t.integer :user_id
      t.integer :area_id
    end
  end
end
