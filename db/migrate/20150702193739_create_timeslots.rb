class CreateTimeslots < ActiveRecord::Migration
  def change
    create_table :timeslots do |t|
      t.datetime :hour
      t.integer  :restaurant_id 
      t.integer  :available_tables 

      t.timestamps null: false
    end
  end
end
