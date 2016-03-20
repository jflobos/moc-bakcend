class Document < ActiveRecord::Base
  belongs_to :lesson
  has_many :document_tags
  has_many :tags, through: :document_tags
end
