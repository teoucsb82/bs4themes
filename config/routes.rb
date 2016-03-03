Rails.application.routes.draw do
  root "themes#index"
  devise_for :users
  resources :blogs, path: 'blog'
  resources :themes do
    member do
      get "/preview/landing" => 'themes#preview_landing', as: :preview_landing
      get "/preview/carousel" => 'themes#preview_carousel', as: :preview_carousel
    end
  end

  get "/privacy" => 'pages#privacy', as: :privacy
  get "/help" => 'pages#help', as: :help
  # get "/about" => 'pages#about', as: :about
  # get 'pages/portfolio', as: :portfolio
end
