Rails.application.routes.draw do
  devise_for :users
  #, controllers: {
    #  sessions: 'logins/sessions'
    #}
    
  resources :images
  resources :users
  resources :images, only: :index do
    member do
      post 'toggle_favorite', to: "images#toggle_favorite"
    end
  end

  get 'api/news'
  post 'api/news'
  #resources :logins
  resources :comments
  resources :comments_types
  resources :images_types
  resources :menus
  resources :plans
  resources :plans_types
  resources :products
  resources :products_types
  resources :tasks_types
  resources :tasks_configs
  resources :tasks_statuses
  resources :tasks
  resources :users_types
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  root  "welcome#index"
  get   'welcome/index'
  get   "menus/index"
  get   "users/index"
  get   "images/index"
  get   "api/index"
end
