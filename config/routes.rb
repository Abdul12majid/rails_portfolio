Rails.application.routes.draw do
  resources :contact_models
  root "app_pages#index"
  get "app_pages/projects"
  get "app_pages/about"
  get "app_pages/contact"  
end
