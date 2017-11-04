Rails.application.routes.draw do
  devise_for :users
  root 'pages#index'

  get '/tutor_signup', to: 'pages#tutor_signup'
  get '/find_a_tutor', to: 'pages#find_a_tutor'
  get '/edit-profile', to: 'pages#tutor_profile'
  patch '/edit-profile', to: 'pages#update_profile'
  get '/edit-skills', to: 'pages#skills_profile'
  post 'tutor/skill', to: 'tutors#add_skill'
  get 'profile', to: 'pages#show'
  get 'facebook', to: 'pages#facebook'

  resources :tutors

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
