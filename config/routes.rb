Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :comments
  end
  resources :tags
  resources :authors

  resources :author_sessions, only: [:new, :create, :destroy]

  get 'login', to: 'author_sessions#new'
  get 'logout', to: 'author_sessions#destroy'

  root to: 'articles#index'
end
