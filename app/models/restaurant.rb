class Restaurant < ActiveRecord::Base

  has_many :reservations

  def opening_hour
    11
  end

  def closing_hour
    23
  end

  def time_slots
    reservation_interval = 1.hour
    start_time = Time.zone.now + 10.minutes
    start_time = Time.zone.at((start_time.to_f / reservation_interval)).ceil * reservation_interval )
    start_time = [start_time, start_time.change(hour: opening_hour)].max
    end_time = (start_time + 5.days).change(hour: closing_hour)

    all_times = []
    a_time = start_time

    begin
      all_times << a_time
      a_time += reservation_interval
      if (a_time + reservation_interval) > a_time.change(hour: closing_hour)
        a_time = (a_time + 1.day).change(hour: opening_hour)
      end

    end while a_time < end_time

    all_times
  end

  def is_available(begin_time, party_size)
    reserved= self.reservation.where(:begin_time, begin_time).sum(:party_size)
    self.capacity - (reserved + party_size) >= 0
  end

end
