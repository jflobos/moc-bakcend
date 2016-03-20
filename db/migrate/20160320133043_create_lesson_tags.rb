class CreateLessonTags < ActiveRecord::Migration
  def change
    create_table :lesson_tags do |t|
      t.integer :tag_id
      t.integer :lesson_id

      t.timestamps null: false
    end
    add_index :lesson_tags, :tag_id
    add_index :lesson_tags, :lesson_id
  end
end
