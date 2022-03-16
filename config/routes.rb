Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Route to index is "/"
  root to: "customers#index"

  # Route to missing_email is '/customers/missing_email'
  get "customers/missing_email" => "customers#missing_email"

  # Route to alphabetized is '/customers/alphabetized'
  get "customers/alphabetized" => "customers#alphabetized"
end
