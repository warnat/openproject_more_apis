
###require '/controllers/api/v2/api_controller'

class Api::More::AllprojectsController < ApplicationController

  include ::Api::V2::ApiController

## OK  skip_before_filter :require_admin, :check_if_login_required

  skip_before_filter :verify_authenticity_token, :check_if_login_required
  skip_before_filter :disable_api
  prepend_before_filter :disable_everything_except_api

  ### OK accept_key_auth :index, :getcustomfield

  def index
    # authorize_any([:view_work_packages], global: true)
    
    p = Project.all.map { |l| { :id => l.id, :identifier => l.identifier, :name => l.name } if !l.archived? }
    render :json => p.compact, :root => false
    
  end
  
  def getcustomfield(:id, :field)
    render :json => {:projectid => :id, :customfieldname => :field, :value => '' }
  end
  
#      def find_project
#        @project = Project.includes([{ custom_values: [{ custom_field: :translations }] }])
#                   .find params[:id]
#      end
  
end
