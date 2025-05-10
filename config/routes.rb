Rails.application.routes.draw do
  resource :unsubscribe, only: [ :show ]
  resource :session
  resources :passwords, param: :token
  root "products#index"
  resources :products do
    resources :subscribers, only: [ :create ]
  end
end
