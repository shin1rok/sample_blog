Rails.application.routes.draw do
  root to: 'users/pages#top'

  devise_for :users

  scope module: :users do
    resources :posts
  end

  scope '/:username', as: :user_name do
    get '/', to: 'users/users#show'
    resources :posts, only: %i[show], controller: 'users/user_posts'
    resources :drafts, only: %i[index show], controller: 'users/drafts'
  end
end
