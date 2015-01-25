Rails.application.routes.draw do

  match 'schedule/user_input',     :controller => :schedule,  :to => :check_user_input, :via => :get, :as => :user_input
  match 'schedule/create_db',     :controller => :schedule,  :to => :create_db_hopital, :via => :get, :as => :create_db_hopital

  
  root 'static_pages#home'
  
  get 'static_pages/home'

  get 'static_pages/about'

  get 'schedule/user_input'
end
