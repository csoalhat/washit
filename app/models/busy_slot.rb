class BusySlot < ActiveRecord::Base
  belongs_to :client

  def self.busy_slots(s,e)
    busy = find_by_sql <<-SQL
      SELECT * FROM "busy_slots"
      WHERE ("busy_slots"."begin" BETWEEN '#{s}' AND '#{e}')
    SQL
  end

end