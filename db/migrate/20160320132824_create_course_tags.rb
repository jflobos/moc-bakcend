class CreateCourseTags < ActiveRecord::Migration
  def change
    create_table :course_tags do |t|
      t.integer :tag_id
      t.integer :course_id

      t.timestamps null: false
    end
    add_index :course_tags, :tag_id
    add_index :course_tags, :course_id
  end
end
