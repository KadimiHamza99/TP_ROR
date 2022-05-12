Rails.application.routes.draw do
  resources :materiels
  get 'searchMAT', to: 'materiels#search'
  resources :adherents
  get '/searchADH', to: 'adherents#search'
  get '/export', to: 'adherents#export'
  resources :auteurs do
    resources :documents
  end
  get '/searchAUT', to: 'auteurs#search'
  namespace :auteur do
    resources :documents
  end
  devise_for :users
  root to: "static_pages#index"
end
