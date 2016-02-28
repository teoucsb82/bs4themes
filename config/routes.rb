Rails.application.routes.draw do
  root "themes#index"
  devise_for :users
  # resources :blogs, path: 'news'
  resources :themes

  get "/privacy" => 'pages#privacy', as: :privacy
  # get 'pages/portfolio', as: :portfolio
end
