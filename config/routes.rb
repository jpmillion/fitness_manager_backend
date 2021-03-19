Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :exercises, only: :index
    end
  end

  namespace :api do
    namespace :v1 do
      resources :workouts, only: [:create, :destroy]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :athlete, only: [:create, :show]
    end
  end
end
