class DocumentTag < ActiveRecord::Base
  belongs_to :tag
  belongs_to :document
end
