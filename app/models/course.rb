class Course < ActiveRecord::Base
  has_many :lessons
  has_many :course_tags
  has_many :tags, through: :course_tags

  has_attached_file :image
  do_not_validate_attachment_file_type :image
end
