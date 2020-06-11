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
  resources :specialitys, only: [:show, :index]
  resources :users do
      resources :consultations, only: [ :new, :create ]
  end

  resources :activities do
      resources :consultations, only: [ :new, :create ]
  end
  get 'profil', to: 'users#profil', as: 'profil'

  patch 'profil/users_id', to: 'users#update_avatar', as: :update_avatar

end
