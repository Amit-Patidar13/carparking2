class CreateBookingSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :booking_slots do |t|
      t.boolean :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
