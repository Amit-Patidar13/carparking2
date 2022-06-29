Rails.application.routes.draw do

  get 'vehicles/index'
  #root 'parking_slots#index'
  root 'users#index'
  #post 'user/userdetails'
  #devise_for :users

  devise_for :users,
  controllers: {
      registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
