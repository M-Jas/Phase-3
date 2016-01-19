Rails.application.routes.draw do

  # resources :articles

  root to: 'articles#index'

  get 'articles' => 'articles#index'
  get 'articles/new' => 'articles#new', as: "new_article"
  post 'articles' => 'articles#create'
  get 'articles/:id' => 'articles#show', as: "article"
  get  'articles/:id/edit' => 'articles#edit', as: "edit_article"
  patch 'articles/:id' => 'articles#update', as: 'article_update'
  delete 'articles/:id' => 'articles#destroy'


end
