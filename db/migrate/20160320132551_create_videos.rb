class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :lesson_id
      t.string :title
      t.text :description
      t.string :video_url

      t.timestamps null: false
    end
    add_index :videos, :lesson_id
  end
end
