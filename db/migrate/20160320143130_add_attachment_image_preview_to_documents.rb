class AddAttachmentImagePreviewToDocuments < ActiveRecord::Migration
  def self.up
    change_table :documents do |t|
      t.attachment :image_preview
    end
  end

  def self.down
    remove_attachment :documents, :image_preview
  end
end
