Rails.application.routes.draw do
  resources :dnd_logs
  resources :players
  root 'dnd_info#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
