module Api::V1
  class CoursesController < BaseController
    def index
      respond_with Course.all
    end
    def show
      respond_with Course.find(params[:id])
    end
  end
end