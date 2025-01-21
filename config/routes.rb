Rails.application.routes.draw do
  root 'profiles#new'  # Form page

  resources :profiles, only: [:new, :create, :show]
end
