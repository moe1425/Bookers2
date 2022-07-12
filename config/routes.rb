Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root to: "home#top"
 devise_for :users

  resources :books, only: [:new, :create, :update, :index, :show, :edit, :destroy]
  resources :users, only: [:show, :edit, :index]

 get "/home/about" => "home#about"

end
