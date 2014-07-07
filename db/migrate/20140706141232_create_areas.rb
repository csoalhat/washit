class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :area
      t.references :client, index: true
      t.references :cleaner, index: true
      t.references :driver, index: true
    end
  end
end
