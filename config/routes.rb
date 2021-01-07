Rails.application.routes.draw do
  root 'url#index'

  post 'url/new', to: 'url#create'
  resources :url
end
