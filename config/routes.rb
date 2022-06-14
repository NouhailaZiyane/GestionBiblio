Rails.application.routes.draw do
  resources :ordinateurs
  resources :emprunt_pcs
  resources :emprunt_livres
  devise_for :admins
  resources :livres
  resources :adherents
  get 'search'; to: 'livres#search'
  get 'search1'; to: 'ordinateurs#search1'
  get 'search2'; to: 'adherents#search2'

  get 'home/index'
  #get 'search'; to: 'search#index'

devise_scope :admin do   
    get '/admins/sign_out' => 'devise/sessions#destroy'
  end
  
  root 'home#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route (/)
  # root articles#index
end
