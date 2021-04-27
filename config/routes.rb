Rails.application.routes.draw do

  resources :lessons
  devise_for :users
  resources :courses do 
    resources :lessons
  end


  resources :users, only: [:index, :edit, :show, :update]

  root 'static_pages#landing_page'
  get 'activity', to: 'static_pages#activity'

  
  get 'privacy_policy', to: 'static_pages#privacy_policy'

end
