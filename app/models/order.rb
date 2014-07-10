class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :default_provider_id, class_name: "User", foreign_key: "default_provider_id"

  def self.busy_slots(s,e)
    busy = find_by_sql <<-SQL
      SELECT * FROM "orders"
      WHERE ("orders"."pickup_time" BETWEEN '#{s}' AND '#{e}')
    SQL
  end

end