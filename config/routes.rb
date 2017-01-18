Rails.application.routes.draw do
  root "monsters#index"
  resources :monsters
end
