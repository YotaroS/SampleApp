Rails.application.routes.draw do
  root 'static_pages#home'

  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/users/navbar', to: 'users#navbar'

  resources :users do
    member do
      get :following, :followers, :favorites
    end
  end
  resources :microposts, only: %i[create destroy]
  resources :relationships, only: %i[create destroy]
  resources :favorites, only: %i[create destroy]

  # namespace 'static_pages' do
  #   get :home
  #   get :help
  #   get :about
  #   get :contact
  # end

  # get 'static_pages/home'
  #
  # get 'static_pages/help'
  #
  # get 'static_pages/about'
  #
  # get 'static_pages/contact'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
