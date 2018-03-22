Rails.application.routes.draw do
  
  root 'home#index'

  devise_for :users, :controllers => { :registrations => "users/registrations" }
  
  namespace :extra do
    get '/tableau-de-bord-extra', to: 'users#dashboard', as: :user_dashboard
    get '/jobs', to: 'jobs#show', as: :users_show
    get 'profile', to: 'users#show', as: :extra_profile
    resources :jobs, only: [:index, :show] do 
      post :apply, on: :member
      post :cancel_candidacy, on: :member
    end
 end

  devise_for :userpros, :controllers => { :registrations => "userpros/registrations" }

  namespace :pro do
    get '/tableau-de-bord-restaurateur', to: 'userpros#dashboard', as: :userpro_dashboard
    get '/profile-extra', to: 'jobs#profileuser', as: :userpro_extra
    get '/jobs', to: 'jobs#show', as: :userpro_job
    
    resources :jobs
  end
end
