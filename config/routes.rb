Rails.application.routes.draw do
  # resources :send_notifs, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'test', to: 'send_notifs#show'
end
