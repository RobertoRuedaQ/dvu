Rails.application.routes.draw do
  devise_for :users
  resources :expenses
  resources :budgets
root "activities#index"
  resources :activities
  resources :actions
  resources :places
  resources :campus
  resources :subprograms
  resources :programs
  resources :subareas
  resources :areas
  resources :types
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
