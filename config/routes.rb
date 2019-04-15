Rails.application.routes.draw do
  resources :posts, only: [:index, :show]
  get 'pages/index'
  get 'pages/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'

  scope '/:username', module: 'users', as: :users do
    resources :posts
  end
end
