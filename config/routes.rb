Rails.application.routes.draw do

  resources :courses
  devise_for :users
  root 'static_pages#landing_page'

  get 'privacy_policy', to: 'static_pages#privacy_policy'

end
