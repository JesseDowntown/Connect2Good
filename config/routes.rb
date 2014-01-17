C2g::Application.routes.draw do
  get "welcome/index"
  resources :search_suggestions

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  get 'needs/:need_id/offers', to: 'offers#new', as: 'new_offer'
  post 'needs/:need_id/offers', to: 'offers#create', as: 'create_offer'

  resources :needs
  resources :offers, except: [:create]

  resources :organizations do
    resources :offers, except: [:show, :create]
    resources :needs, except: [:show]
  end
end
