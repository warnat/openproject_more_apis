
OpenProject::Application.routes.draw do

  namespace :api do
    namespace :more do
      resources :allprojects, only: [ :index], defaults: { format: :json }
    end
  end
end
