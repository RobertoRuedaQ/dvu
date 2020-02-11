Rails.application.routes.draw do
  get 'participants/index'
  resources :subjects
  root "data#index"
  devise_for :users
  resources :expenses
  resources :budgets
  resources :activities do
    get :convert
  	get :pdf
  end
  resources :actions
  resources :places
  resources :campus
  resources :subprograms
  resources :programs
  resources :subareas
  resources :areas
  resources :types
  resources :transfers

  patch '/participants', to: 'activities#participants', as: :participants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
