class CreateCleaners < ActiveRecord::Migration
  def change
    create_table :cleaners do |t|
      t.string :area
      t.string :name
      t.string :phone
      t.string :address
      t.string :information

      t.timestamps
    end
  end
end
