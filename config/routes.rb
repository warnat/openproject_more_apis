
OpenProject::Application.routes.draw do

  namespace :api do
    namespace :more do
      resources :allprojects, only: [ :index], defaults: { format: :json }
      
      get 'allprojects/:project_id/customfield/:custom_field_id', to: 'allprojects#getcustomfield'
      
      get 'project/:project_id/archive/:revision_number', to: 'allprojects#archive'

      resources :allusers,    only: [ :index], defaults: { format: :json }
    end
  end
end
