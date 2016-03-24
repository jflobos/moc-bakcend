class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_one :course_id
  has_many :videos
  has_many :documents
end
