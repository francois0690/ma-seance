Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  unauthenticated do
    root to: 'pages#home'
  end

  authenticated do
    root to: 'users#dashboard', as: :authenticated_root
  end

  resources :consultations, except: [ :new, :create ]
  resources :specialities, only: [:show, :index]
  resources :users do
      resources :consultations, only: [ :new, :create ]
  end

  resources :activities do
      resources :consultations, only: [ :new, :create ]
  end
  get 'profil', to: 'users#profil', as: 'profil'
  get 'aubergine', to: 'pages#aubergine', as: 'aubergine'
  get 'aubergine_email', to: 'pages#aubergine_email', as: 'aubergine_email'

  patch 'profil/users_id', to: 'users#update_avatar', as: :update_avatar
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
