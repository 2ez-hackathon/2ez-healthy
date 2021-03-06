Rails.application.routes.draw do

  match 'schedule/user_input',     :controller => :schedule,  :to => :user_input, :via => :get, :as => :user_input
  match 'schedule/check_user_input',     :controller => :schedule,  :to => :check_user_input, :via => :get, :as => :check_user_input
  match 'schedule/create_db',     :controller => :schedule,  :to => :create_db_hopital, :via => :get, :as => :create_db_hopital
  match 'schedule/manage_appointment',     :controller => :schedule,  :to => :manage_appointment, :via => :get, :as => :manage_appointment
  match 'schedule/approve_appointment/:id', :controller => :schedule,  :to => :approve_appointment, :via => :get, :as => :approve_appointment

  
  root 'static_pages#home'
  
  get 'static_pages/home'

  get 'static_pages/about'

  get 'schedule/user_input'
end
