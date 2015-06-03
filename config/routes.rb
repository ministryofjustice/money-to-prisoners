Rails.application.routes.draw do
  resources :payments
  resources :prisoners

  # You can have the root of your site routed with "root"
  root 'payments#index'
end
