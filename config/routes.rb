Rails.application.routes.draw do
  root to: "cocktails#index"
  resources :doses, only: [:destroy]
  resources :cocktails, only: [ :index, :show, :new, :create ] do
  resources :doses, only: [:index, :new, :create] do
      resources :ingredients, only: [:new, :create, :destroy]
    end
  end
end

  # get 'cocktails', to: "cocktails#index"
  # get "cocktails/new", to: "cocktails#new"
  # get "cocktails/:id", to: "cocktails#show", as: :show_cocktail
  # post "cocktails", to: "cocktails#create", as: :create_cocktail
  # delete "cocktails/:id", to: "cocktails#destroy", as: :destroy_cocktail
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'doses/new'
  # get 'doses/create'
  # get 'doses/destroy'

