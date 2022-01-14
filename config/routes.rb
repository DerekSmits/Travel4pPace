Rails.application.routes.draw do
  devise_for :users
  resources :bases
  resources :users
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "bases#index"
  namespace 'api' do
    resources :posts, defaults: {format: 'json'}
    resources :comments
  end
end
