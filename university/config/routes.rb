Rails.application.routes.draw do

  resources :students
  root :to => 'access#menu'

  get 'access/menu'

  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  resources :admin_users, :except => [:show] do
    member do
      get :delete
    end
  end

  resources :sections
  resources :courses
  resources :professors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
