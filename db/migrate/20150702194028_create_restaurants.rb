class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :capacity
      t.string :address
      t.string :phone_number
      t.text :description
      t.string :picture

      t.timestamps null: false
    end
  end
end
