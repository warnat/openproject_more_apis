
OpenProject::Application.routes.draw do

  namespace :api do
    namespace :more do
      resources :allprojects, only: [ :index], defaults: { format: :json }
      
      get 'allprojects/:id/customfield/:field', to: 'allprojects#getcustomfield(:id,:field)'
      
      resources :allusers,    only: [ :index], defaults: { format: :json }
    end
  end
end
