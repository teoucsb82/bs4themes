Rails.application.routes.draw do
  root "themes#index"
  devise_for :users
  resources :blogs, path: 'blog'
  resources :themes

  get "/privacy" => 'pages#privacy', as: :privacy
  get "/help" => 'pages#help', as: :help
  # get "/about" => 'pages#about', as: :about
  # get 'pages/portfolio', as: :portfolio
end
