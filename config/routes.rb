Rails.application.routes.draw do
  resources :diet_questions
  resources :diet_blogs
  resources :messages

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root for blog
end
