module OrdersHelper
  def time_slots_for_a_day(slots)
    (9...18).to_a.map do |begin_hour|
      t = Time.new.beginning_of_day
      t_begin = t + begin_hour.hours 
      t_end = t_begin + 1.hour

      busy = slots.select do |slot|
        pickup_time = slot.pickup_time + Time.zone_offset("BST")
        return_time = slot.return_time + Time.zone_offset("BST")
        puts "#{pickup_time} <= #{t_begin} #{return_time <= t_begin}"
        puts (slot.pickup_time <= t_begin) && (slot.return_time >= t_end)
        (slot.pickup_time <= t_begin) && (slot.return_time >= t_end)
      end
      #puts "#{t_begin.to_s(:short)} is #{busy.inspect}"
      [t_begin.strftime("%H:%M"), t_end.strftime("%H:%M")].join(" - ")
    end
  end

end
