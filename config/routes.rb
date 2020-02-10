Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'categories', to: 'categories#index', as: 'categories'
  get 'categories/new', to: 'categories#new'
  get 'categories/:id', to: 'categories#show'
  post 'categories', to: 'categories#create'

  get 'articles', to: 'articles#index', as: 'articles'
  get 'articles/new', to: 'articles#new'
  post 'articles', to: 'articles#create'
end
