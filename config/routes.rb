Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [:index, :new, :show, :create, :destroy] do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [:destroy]
end

  # get '/ingredients', to: 'ingredients#index'
  # get '/cocktails', to: 'cocktails#index'
  # get '/cocktails/new', to: 'cocktails#new', as: :new_cocktail
  # get '/cocktails/:id', to: 'cocktails#show', as: :cocktail
  # post '/cocktails', to: 'cocktails#create'
  # get '/doses', to: 'doses#index'
  # get 'doses/new', to: 'doses#new', as: :new_doses
  # post '/doses', to: 'doses#create'
  # delete '/doses/:id', to: 'doses#destroy'
