class CreateDocumentTags < ActiveRecord::Migration
  def change
    create_table :document_tags do |t|
      t.integer :tag_id
      t.integer :document_id

      t.timestamps null: false
    end
    add_index :document_tags, :tag_id
    add_index :document_tags, :document_id
  end
end
