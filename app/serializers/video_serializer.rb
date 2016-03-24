class VideoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :video_url
  has_one :lesson_id
end
