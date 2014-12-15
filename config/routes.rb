Rails.application.routes.draw do
  
  devise_for :admins
  root 'pages#home'
  resources :signups
end
