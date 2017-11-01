Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'

  get '/tutor_signup', to: 'pages#tutor_signup'
  get '/find_a_tutor', to: 'pages#find_a_tutor'
  get '/tutor_profile', to: 'pages#tutor_profile'
  post '/tutor_profile', to: 'pages#update_profile'


  resources :tutors

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
