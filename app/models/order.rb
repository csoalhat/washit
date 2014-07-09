class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :default_provider, class_name: "User"

  def self.busy_slots(s,e)
    busy = find_by_sql <<-SQL
      SELECT * FROM "orders"
      WHERE ("orders"."pickup_time" BETWEEN '#{s}' AND '#{e}')
    SQL
  end

end