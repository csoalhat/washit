class BusySlots < ActiveRecord::Base

  def self.busy_slots(s,e)
    busy = Slot.find_by_sql <<-SQL
      SELECT * FROM "busy_slots"
      WHERE ("busy_slots"."busy_slots" BETWEEN '#{s}' AND '#{e}')
    SQL
  end

end