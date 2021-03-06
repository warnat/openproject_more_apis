# encoding: UTF-8
$:.push File.expand_path("../lib", __FILE__)

require 'open_project/more_apis/version'
# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "openproject-more_apis"
  s.version     = OpenProject::MoreApis::VERSION
  s.authors     = "Ralf Warnat"
  s.email       = "ralf@wrnt.de"
  s.homepage    = "https://github.com/warnat/openproject_more_apis/"
  s.summary     = 'OpenProject More Apis'
  s.description = 'A Some missing APIs'
  s.license     = "GPLv3"

  s.files = Dir["{app,config,db,lib}/**/*"] + %w(CHANGELOG.md README.md)

  s.add_dependency "rails", "~> 4.2.4"
end
