Rails.application.routes.draw do
  
  resources :trace_sortantes
  resources :trace_entrants
  resources :suivis
  resources :statut_couriers
  resources :events
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
root 'dash_board#index'
  resources :archive_entry_couriers
  resources :archive_projects
  resources :archive_release_couriers
  resources :entry_couriers
  resources :project_phases
  resources :release_couriers
  resources :projects
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  # For detailson the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
