Rails.application.routes.draw do
  devise_for :users, skip: :all

  namespace :api do
    ## users
    get 'golfers/:id', to: 'users#show'
    post 'login', to: 'users#login'

    ## scores
    get 'feed', to: 'scores#user_feed'
    resources :scores, only: %i[create destroy]
  end
end
