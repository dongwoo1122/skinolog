Rails.application.routes.draw do
  devise_for :users
  root to: "routineposts#index"
  resources :routineposts, only:[:index, :new]
end
