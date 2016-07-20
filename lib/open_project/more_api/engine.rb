# Prevent load-order problems in case openproject-plugins is listed after a plugin in the Gemfile
# or not at all
require 'open_project/plugins'
require 'open_project/more_api/version'

module OpenProject::MoreApi
  class Engine < ::Rails::Engine
    engine_name :openproject_more_api

    include OpenProject::Plugins::ActsAsOpEngine

    register 'openproject-more_api',
             :author_url => 'https://github.com/warnat/',
             :requires_openproject => '>= 4.0.0'

    add_api_path :all_projects do
      "#{root}/all_projects"
    end

  end
end
