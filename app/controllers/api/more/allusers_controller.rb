
class Api::More::AllusersController < ApplicationController

  include ::Api::V2::ApiController

  skip_before_filter :verify_authenticity_token, :check_if_login_required
  skip_before_filter :disable_api
  prepend_before_filter :disable_everything_except_api

  def index
    us = User.all.map { |u| { :id => u.id, :login => u.login, :firstname => u.firstname, :lastname => u.lastname} if u.active? }
    render :json => us.compact, :root => false
  end
end
