Rails.application.routes.draw do
  resources :boatcomments
  get'boatcomments/index'

  root 'boatcomments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
