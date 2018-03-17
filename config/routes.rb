Rails.application.routes.draw do
  get 'users/dashboard'

  devise_for :users
  resources :jobs

  root 'jobs#index'


   # TABLEAUX DE BORD
  get '/tableau-de-bord-extra', to: 'users#dashboard', as: :user_dashboard

  # CANDIDATURES
  get '/postuler', to: 'users#apply_for_job', as: :apply_for_job
  get '/annuler', to: 'users#cancel_job_candidacy', as: :cancel_job_candidacy
end
