#-- encoding: UTF-8

require 'api/v3/all_projects/all_projects'

module API
  module V3
    module AllProjects
      class ProjectList < ::API::OpenProjectAPI
        resources :project_list do
            get do
              # CostTypeRepresenter.new(@cost_type, current_user: current_user)
              '{ "something" : "special" }'
            end
        end
      end
    end
  end
end
