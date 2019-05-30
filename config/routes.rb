Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  root 'pages#index'
  resources :employees

  resources :categories do
    resources :employers
  end

  resources :employers do
    resources :employ_comments, shallow: true
  end
  resources :employeesparams

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
