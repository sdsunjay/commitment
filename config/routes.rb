Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: 'omniauth_callbacks'}
  authenticate :user do
    get 'users/:id/connect', to: 'users#connect', as: :user_connect
    resources :enrollments, only: [:new, :create]
    resources :answers, only: [:index]
    resources :courses, only: [:show, :index, :new, :create] do
      resources :challenges, only: [:index, :show, :edit, :new, :create, :edit, :update] do
        resources :answers, only: [:new, :create, :edit, :update, :show]
      end
    end
    resources :users, only: [:show, :index, :edit, :update]
  end

  authenticated :user do
    root :to => 'users#show', as: :authenticated_root
  end

  root to: 'home#index'
end
