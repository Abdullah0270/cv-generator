Rails.application.routes.draw do
  root 'profiles#new' # Form page
  get 'profile', to: 'profiles#show', as: 'profile' # Profile page
end
