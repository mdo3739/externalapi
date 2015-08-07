Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root to: 'welcome#index'
  namespace :api, defaults: {format: :json} do
    resources :users
  end
end
