class Lesson < ActiveRecord::Base
  belongs_to :course
  has_many :activities
  has_many :documents
  has_many :videos
  has_many :lesson_tags
  has_many :tags, through: :lesson_tags
end
