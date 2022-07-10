Rails.application.routes.draw do
  get 'user/show'
  get 'user/edit'
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root to: "homes#top"
 devise_for :users

  resources :books, only: [:new, :create, :index, :show]

 get "/homes/about" => "homes#about", as: "about"

end
