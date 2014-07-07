module OrdersHelper
  def time_slots_for_a_day
    (9...18).to_a.map do |begin_hour|
      t = Time.new.beginning_of_day
      t_begin = t + begin_hour.hours
      t_end = t_begin + 1.hour
      [t_begin.strftime("%H:%M"), t_end.strftime("%H:%M")].join(" - ")
    end
  end

end
