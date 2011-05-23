MobileBlog::Application.routes.draw do
  resources :posts

  get "home/index"
  root :to => "home#index"
end
