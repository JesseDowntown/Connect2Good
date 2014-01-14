C2g::Application.routes.draw do
  resources :search_suggestions

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'needs#index'

  resources :needs
  resources :offers
  resources :organizations do
    resources :offers
  end
end
