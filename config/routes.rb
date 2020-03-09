Rails.application.routes.draw do
  devise_for :users
  get 'participants/index'
  get 'activities/own_activities'
  resources :subjects
  resources :expenses
  resources :budgets
  resources :activities do
    resources :reports, only: [:new, :show, :create, :edit, :update, :destroy]
    get :convert
    get :pdf
    get :delete_participants
  end
  get "reports/index"
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
