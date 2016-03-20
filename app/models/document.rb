class Document < ActiveRecord::Base
  belongs_to :lesson
  has_many :document_tags
  has_many :tags, through: :document_tags

  has_attached_file :file
  do_not_validate_attachment_file_type :file

  has_attached_file :preview_image
  do_not_validate_attachment_file_type :preview_image
end
