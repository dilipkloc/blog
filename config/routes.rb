Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'categories', to: 'categories#index', as: 'categories'
  get 'categories/new', to: 'categories#new'
  get 'categories/:id', to: 'categories#show', as: 'category'
  post 'categories', to: 'categories#create'
  get 'categories/:id/edit', to: 'categories#edit'
  patch 'categories/:id', to: 'categories#update'

  get 'articles', to: 'articles#index', as: 'articles'
  get 'articles/:id', to: 'articles#show', as: 'article'
  get 'articles/new', to: 'articles#new', as: 'article_new'
  post 'articles', to: 'articles#create'
end
