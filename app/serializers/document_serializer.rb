class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_one :lesson_id
end
