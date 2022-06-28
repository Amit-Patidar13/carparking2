class DropParkingSlots < ActiveRecord::Migration[6.0]
  def change
    drop_table :parking_slots
  end
end
