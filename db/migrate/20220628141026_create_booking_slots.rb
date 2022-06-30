class CreateBookingSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_slots do |t|
      t.boolean :status
      t.integer :user_id

      t.timestamps
    end
  end
end
