Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'games#new'
  resources :games do
    member do
      post 'complete'
    end
    resources :stats, only: [:index, :create, :destroy]
  end

  resources :opponents
  resources :locations
end
