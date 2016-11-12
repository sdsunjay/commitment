Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: 'omniauth_callbacks'}
  authenticate :user do
    resources :answers, only: [:index, :edit, :update]
    resources :courses, only: [:show, :index, :new, :create] do
      resources :challenges, only: [:index, :edit, :new, :create, :edit, :update] do
        resources :answers, only: [:new, :create]
      end
    end
    resources :users, only: [:show, :index, :edit, :update]
  end
  root 'home#index'
end
