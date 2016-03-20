class CreateActivityTags < ActiveRecord::Migration
  def change
    create_table :activity_tags do |t|
      t.integer :tag_id
      t.integer :activity_id

      t.timestamps null: false
    end
    add_index :activity_tags, :tag_id
    add_index :activity_tags, :activity_id
  end
end
