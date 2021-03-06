Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'sessions'}
  
  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy]
  end

  get 'instructions' => 'welcome#about'
  
  root to: 'welcome#index'
end