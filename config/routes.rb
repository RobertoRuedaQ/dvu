Rails.application.routes.draw do
  resources :reports
  devise_for :users
  get 'participants/index'
  get 'activities/own_activities'
  resources :subjects
  resources :expenses
  resources :budgets
  resources :activities do
    get :convert
    get :pdf
    get :delete_participants
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
  root "data#index"


  patch '/participants', to: 'activities#participants', as: :participants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
