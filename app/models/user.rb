class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum user_type: %i(user admin)
  # has_many :booking_slots, dependent: :destroy

  def admin?
    user_type == 'admin'
  end
end
