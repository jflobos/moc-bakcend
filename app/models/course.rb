class Course < ActiveRecord::Base
  has_many :lessons
  has_many :course_tags
  has_many :tags, through: :course_tags
end
