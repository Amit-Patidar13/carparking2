Rails.application.routes.draw do

  get 'vehicles/index'
  #root 'parking_slots#index'
  root 'booking_slots#index'
  #post 'user/userdetails'
  #devise_for :users

  devise_for :users,
  controllers: {
      registrations: 'users/registrations'
  }
  get '/my_bookings', to: 'users#my_bookings', as: :my_bookings
  put '/book_slot/:id', to: 'booking_slots#book', as: :book_slot
  get 'user/:id', to: 'users#show', as: :user_show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
