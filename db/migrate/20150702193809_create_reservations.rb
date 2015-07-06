class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :user, index: true, foreign_key: true
      t.references :restaurant, index: true, foreign_key: true
      t.datetime :begin_time
      t.datetime :end_time
      t.integer :party_size, :default => 1

      t.timestamps null: false
    end
  end
end
