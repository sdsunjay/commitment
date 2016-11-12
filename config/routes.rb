Rails.application.routes.draw do
    devise_for :users, controllers: { registrations: 'registrations', omniauth_callbacks: 'omniauth_callbacks'}
    authenticate :user do
        resources :enrollments, only: [:show, :index, :new, :create, :edit, :update] do
            resources :courses, only: [:show, :index, :new, :create] do
                resources :challenges, only: [:new, :create, :index, :edit, :update, :destroy, :show] do
                   resources :answers, only: [:new, :create, :index, :edit, :update]
                end
            end
        end
        resources :users, only: [:show, :index, :edit, :update]
    end
    root 'home#index'
end
