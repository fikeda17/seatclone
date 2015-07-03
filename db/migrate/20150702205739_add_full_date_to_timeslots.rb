class AddFullDateToTimeslots < ActiveRecord::Migration
  def change
    add_column :timeslots, :full_date, :datetime
  end
end
