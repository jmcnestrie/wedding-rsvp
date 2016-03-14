Rails.application.routes.draw do
  resources :rsvps, only: [:create, :index]
  get '/' => 'home#index'
end
