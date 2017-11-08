Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
  get 'restaurants', to: 'restaurants#reviews'
  post 'restaurants', to: 'restaurants#reviews'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
