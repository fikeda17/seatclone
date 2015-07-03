class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :tables_per_timeslot
      t.string :address
      t.string :phone_number
      t.text :description
      t.string :picture

      t.timestamps null: false
    end
  end
end
