
OpenProject::Application.routes.draw do

  namespace :api do
    namespace :more do
      resources :allprojects, only: [ :index], defaults: { format: :json }
      
      get 'allprojects/:project_id/customfield/:custom_field_id', to: 'allprojects#getcustomfield'
      
      resources :allusers,    only: [ :index], defaults: { format: :json }
    end
  end
end
