# Prevent load-order problems in case openproject-plugins is listed after a plugin in the Gemfile
# or not at all
require 'open_project/plugins'
require 'open_project/more_apis/version'

module OpenProject::MoreApis
  class Engine < ::Rails::Engine
    engine_name :openproject_more_apis

    include OpenProject::Plugins::ActsAsOpEngine

    register 'openproject-more_apis',
             :author_url => 'https://github.com/warnat/',
             :requires_openproject => '>= 4.0.0'

    add_api_path :allprojects do
      "#{root}/allprojects"
    end

  end
end
