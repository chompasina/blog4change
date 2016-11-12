Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "posts#index"
  
  resources :posts, only: [:new, :create, :index, :show]
  resources :comments 
  
  namespace :posts do
    resources :comments
  end
  
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
  
end
