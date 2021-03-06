AppelAPresentations::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config


  resources :presentations
  match "/auth/meetup/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout
  # 
  root to: 'presentations#new'
  ActiveAdmin.routes(self)
end
