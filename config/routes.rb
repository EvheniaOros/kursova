Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  root 'pages#index'

  resources :categories do
    resources :employers do
      resources :employeesparams
    end
  end

  resources :users do
      resources :employeesparams
      resources :employers
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
