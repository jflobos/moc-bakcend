module Api::V1
  class DocumentsController < BaseController
    def show
      respond_with Document.find(params[:id])
    end
  end
end