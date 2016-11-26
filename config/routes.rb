Rails.application.routes.draw do

  default_url_options :host => 'localhost:3000'
  devise_for :users
  devise_scope :user do
    root to: 'devise/sessions#new'
  end

  resources :dashboard, only: :index

  resources :programs do
    resource :users
  end

  resource :student_profiles
  resource :employer_profiles
  resource :admin_profiles

end