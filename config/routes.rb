Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"
  devise_for :users, controllers:{ registrations: "registrations"}
  resources :users, only: [:show]
  root to: 'pages#home'

  resources :adverts
  get  "offres",   to: "adverts#offers"
  get  "demandes", to: "adverts#demandes"

end
