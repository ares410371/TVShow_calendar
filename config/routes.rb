Rails.application.routes.draw do
  resources :crews
  resources :tv_show_episodes
  resources :tv_show_seasons
  resources :tv_shows
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
