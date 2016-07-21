
#module Api
#  module More
#  end
#end

#module Allprojects
class Api::More::AllprojectsController < ApplicationController

  #resources :allprojects do

  def index
    @projects = Project.all
    
    p = @projects.map { |l| [l.id, l.identifier, l.name] if l.visible }
    #    Project.project_tree(Project.visible) do |project, _level|
    #      @projects << project
    #    end
    
    render :json => p
  end
end
#end
