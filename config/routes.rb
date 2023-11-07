Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    get '/greeting', to: 'messages#index'
  end
end
