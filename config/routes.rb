Rails.application.routes.draw do
  get 'cocktails/new', to: 'cocktails#new'
  get 'cocktails',     to: 'cocktails#index'
  post 'cocktails',    to: 'cocktails#create'
  get 'cocktails/:id', to: 'cocktails#show', as: :cocktail

  get 'cocktails/:cocktail_id/doses/new',   to: 'doses#new'
  get 'cocktails/:cocktail_id/doses',     to: 'doses#index'
  post 'cocktails/:cocktail_id/doses',    to: 'doses#create'
  delete 'doses/:id',     to: 'doses#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
