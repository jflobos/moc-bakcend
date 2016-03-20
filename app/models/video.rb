class Video < ActiveRecord::Base

  belongs_to :lesson
  has_many :video_tags
  has_many :tags, through: :video_tags

  has_attached_file :preview_image
  do_not_validate_attachment_file_type :preview_image
end
