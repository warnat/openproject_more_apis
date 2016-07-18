# encoding: UTF-8
$:.push File.expand_path("../lib", __FILE__)

require 'open_project/more_api/version'
# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "openproject-more_api"
  s.version     = OpenProject::MoreApi::VERSION
  s.authors     = "Finn GmbH"
  s.email       = "info@finn.de"
  s.homepage    = "https://community.openproject.org/projects/more-api"  # TODO check this URL
  s.summary     = 'OpenProject More Api'
  s.description = 'Some missing APIs'
  s.license     = "GPLv3"

  s.files = Dir["{app,config,db,lib}/**/*"] + %w(CHANGELOG.md README.md)

  s.add_dependency "rails", "~> 4.2.5"
end
