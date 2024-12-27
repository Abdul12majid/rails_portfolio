Rails.application.routes.draw do
  get "app_pages/index"
  get "up" => "rails/health#show", as: :rails_health_check

end
