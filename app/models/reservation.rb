class Reservation < ActiveRecord::Base
  include ActionView::Helpers::TextHelper

  validate :free_seats

  belongs_to :user
  belongs_to :restaurant

  def free_seats
    unless self.restaurant.is_available?(self.begin_time, self.party_size)
      errors.add(:begin_time, "is not available" + self.party_size)
    end
  end
end