Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'employeesparams/index'

  get 'employees/index'

  get 'employers/index'
  
  devise_for :users
  root 'pages#index'
  resources :employees
  resources :employers
  resources :employeesparams

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
