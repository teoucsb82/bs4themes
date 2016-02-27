Rails.application.routes.draw do
  root "themes#index"
  devise_for :users
  # resources :blogs, path: 'news'
  resources :themes

  # get 'pages/resume', as: :resume
  # get 'pages/portfolio', as: :portfolio
end
