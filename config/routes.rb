Rails.application.routes.draw do

  
  get 'categories', to: 'categories#index', as: 'categories'
  get 'categories/new', to: 'categories#new', as: 'category_new'
  get 'categories/:id', to: 'categories#show', as: 'category'
  post 'categories', to: 'categories#create'
  get 'categories/:id/edit', to: 'categories#edit', as: 'category_edit'
  patch 'categories/:id', to: 'categories#update'
  delete 'categories/:id', to: 'categories#destroy'

  get 'articles', to: 'articles#index', as: 'articles'
  get 'articles/new', to: 'articles#new', as: 'article_new'
  get 'articles/:id', to: 'articles#show', as: 'article'
  post 'articles', to: 'articles#create'
  get 'articles/:id/edit', to: 'articles#edit', as: 'article_edit'
  patch 'articles/:id', to: 'articles#update'
  delete 'articles/:id', to: 'articles#destroy'

  get 'errors', to: 'errors#index', as: 'errors'

  get 'postcomments/:id', to: 'postcomments#show', as: 'postcomments'
  post 'postcomments/:id', to: 'postcomments#create'
  get 'postcomments/:id/edit', to: 'postcomments#edit', as: 'comment_edit'
  patch 'comment/:id', to: 'comment#update'
  delete 'postcomments/:id', to: 'postcomments#destroy'


  devise_for :users,
             :controllers => {:registrations => "my_devise/registrations"}

  root 'articles#index'
end
