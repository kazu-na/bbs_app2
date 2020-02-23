Rails.application.routes.draw do
  namespace :v1 do
    resources :boards, only: [:create, :destroy]
    resources :users, only: [:index, :create]
  end
end
