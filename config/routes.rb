Rails.application.routes.draw do
  resources :rsvps, only: [:create, :index]
  get '/' => 'home#index'
  get '/thankyou' => 'rsvps#thankyou'
  get '/error' => 'rsvps#error'
end
