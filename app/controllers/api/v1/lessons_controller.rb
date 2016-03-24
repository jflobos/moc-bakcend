module Api::V1
  class LessonsController < BaseController
    def show
      respond_with Lesson.find(params[:id])
    end
    def index
      respond_with Lesson.where({course_id: params[:course_id]}).all
    end
  end
end