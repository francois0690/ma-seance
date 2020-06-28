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
  get 'typeform', to: 'pages#typeform', as: 'typeform'
  get 'results', to: 'pages#results', as: 'results'
  patch 'profil/users_id', to: 'users#update_avatar', as: :update_avatar

end
