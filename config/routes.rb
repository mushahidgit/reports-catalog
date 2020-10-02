Rails.application.routes.draw do
  resources :reports
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to:'pages#about'
  get 'search', to:'pages#search'
end
