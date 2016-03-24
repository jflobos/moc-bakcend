module Api::V1
  class VideosController < BaseController
    def show
      respond_with Video.find(params[:id])
    end
  end
end