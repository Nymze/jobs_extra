Rails.application.routes.draw do
  
  root 'home#index'

  devise_for :users

  namespace :extra do
    get '/tableau-de-bord-extra', to: 'users#dashboard', as: :user_dashboard
    get '/jobs', to: 'jobs#show', as: :users_show
    resources :jobs, only: [:index, :show] do 
      post :apply, on: :member
      post :cancel_candidacy, on: :member
    end
 end

  devise_for :userpros

  namespace :pro do
    get '/tableau-de-bord-restaurateur', to: 'userpros#dashboard', as: :userpro_dashboard
    resources :jobs
  end
end
