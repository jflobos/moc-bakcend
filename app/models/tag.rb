class Tag < ActiveRecord::Base
  has_many :activity_tags
  has_many :activities, through: :activity_tags
  has_many :course_tags
  has_many :courses, through: :course_tags
  has_many :document_tags
  has_many :documents, through: :document_tags
  has_many :lesson_tags
  has_many :lessons, through: :lesson_tags
  has_many :video_tags
  has_many :videos, through: :video_tags
end
