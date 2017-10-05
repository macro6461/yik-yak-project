  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show]
      resources :posts, only: [:index, :create, :show]
      resources :comments, only: [:index, :create, :show]
      resources :tags, only: [:index, :create]
      resources :sessions, only: [:create, :index]
    end
  end
end
