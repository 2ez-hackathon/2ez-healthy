Rails.application.routes.draw do

  match 'schedule/user_input',     :controller => :schedule,  :to => :check_user_input, :via => :get, :as => :user_input

  
end
