Rails.application.routes.draw do
  devise_for :users

  # Set the root path to the home index action
  root "home#index"
end
