class Api::V1::BaseController < ApplicationController
  if Rails.env.production?
    include ApiErrorConcern
  end

  skip_before_action :verify_authenticity_token
  self.responder = ApiResponder
  respond_to :json
end