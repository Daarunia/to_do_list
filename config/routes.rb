Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # root path route
  root to: 'notes#index'
  resources :notes 
end
