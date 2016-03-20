class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :lesson_id
      t.string :title
      t.text :description

      t.timestamps null: false
    end
    add_index :activities, :lesson_id
  end
end
