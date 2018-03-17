Rails.application.routes.draw do
  
  resources :jobs
 


  root 'home#index'

  get 'users/dashboard'
  get 'userpros/dashboard'
  get 'jobs/index'


    devise_for :userpros
    devise_for :users




   # TABLEAUX DE BORD
  get '/tableau-de-bord-extra', to: 'users#dashboard', as: :user_dashboard
  get '/tableau-de-bord-restaurateur', to: 'userpros#dashboard', as: :userpro_dashboard

  # CANDIDATURES
  get '/postuler', to: 'users#apply_for_job', as: :apply_for_job
  get '/annuler', to: 'users#cancel_job_candidacy', as: :cancel_job_candidacy
end
