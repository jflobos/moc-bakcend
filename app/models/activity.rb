class Activity < ActiveRecord::Base
  belongs_to :lesson
  has_many :activity_tags
  has_many :tags, through: :activity_tags
end
