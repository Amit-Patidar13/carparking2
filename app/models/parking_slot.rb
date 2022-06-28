class ParkingSlot < ApplicationRecord
  has_one :vehicle

  enum :availability, { empty: 0, occupy: 1 }
end
