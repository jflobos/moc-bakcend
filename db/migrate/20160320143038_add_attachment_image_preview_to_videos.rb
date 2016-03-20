class AddAttachmentImagePreviewToVideos < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.attachment :image_preview
    end
  end

  def self.down
    remove_attachment :videos, :image_preview
  end
end
