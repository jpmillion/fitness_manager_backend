Rails.application.routes.draw do
  get 'sessions/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :exercises, only: :index
      resources :workouts, only: [:create, :destroy]
      resources :athletes, only: [:create, :show]
      resources :sessions, only: :create
    end
  end
end
