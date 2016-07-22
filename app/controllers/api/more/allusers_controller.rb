
class Api::More::AlluserssController < ApplicationController

  def index
    us = User.all.map { |u| [u.id, u.identifier, u.firstname, u.lastname] if u.active? }
    render :json => us
  end
end
