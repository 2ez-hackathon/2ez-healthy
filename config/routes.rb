Rails.application.routes.draw do

  root 'static_pages#home'
  
  get 'static_pages/home'

  get 'static_pages/about'

  get 'schedule/user_input'
end
