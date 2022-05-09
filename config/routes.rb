Rails.application.routes.draw do
  namespace :api do
    namespace :v1, format: :json do
      resources :animals, only: %i[index chimera]
    end
  end
end
