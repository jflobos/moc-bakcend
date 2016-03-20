class CreateVideoTags < ActiveRecord::Migration
  def change
    create_table :video_tags do |t|
      t.integer :tag_id
      t.integer :video_id

      t.timestamps null: false
    end
    add_index :video_tags, :tag_id
    add_index :video_tags, :video_id
  end
end
