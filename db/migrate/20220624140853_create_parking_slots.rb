class CreateParkingSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :parking_slots do |t|
      t.string :availability

      t.timestamps
    end
  end
end
