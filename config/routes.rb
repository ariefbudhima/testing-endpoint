Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # resources :send_notifs, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/', to: 'send_notifs#default'
  post 'test', to: 'send_notifs#show'
end
