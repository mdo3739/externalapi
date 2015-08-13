Rails.application.routes.draw do
  get 'welcome/index'
  root to: 'welcome#index'
  namespace :api, defaults: {format: :json} do
    resources :users
  end
end
