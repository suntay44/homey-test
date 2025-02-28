Rails.application.routes.draw do
  resources :projects, except: [:edit, :update] do
    resources :comments, only: [:create]
    resources :status_changes, only: [:create]
  end
  root to: 'projects#index'
end