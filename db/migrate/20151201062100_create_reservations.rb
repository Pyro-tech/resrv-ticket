class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :customer_id
      t.integer :event_id
      t.integer :buy_count
      t.string :payment

      t.timestamps null: false
    end
  end
end
