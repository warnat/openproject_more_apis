
###require '/controllers/api/v2/api_controller'

class Api::More::AllprojectsController < ApplicationController

  include ::Api::V2::ApiController

  skip_before_filter :verify_authenticity_token, :check_if_login_required
  skip_before_filter :disable_api
  prepend_before_filter :disable_everything_except_api

  def index
    p = Project.all.map { |l| { :id => l.id, :identifier => l.identifier, :name => l.name } if !l.archived? }
    render :json => p.compact, :root => false    
  end
  
  def getcustomfield
    
    prj = Project.includes(:custom_values).find(params[:project_id])
     
    custom_value = prj.custom_values.find do |value| 
          value.custom_field.id.to_s == params[:custom_field_id] && value.customized_type == "Project"
    end
    
    render :json => {:project_id => params[:project_id],
                     :custom_field_id => params[:custom_field_id], 
                     :value => custom_value.value
                     }
  end
  
#      def find_project
#        @project = Project.includes([{ custom_values: [{ custom_field: :translations }] }])
#                   .find params[:id]
#      end
  
end
