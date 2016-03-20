class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :lesson_id
      t.string :title
      t.text :description

      t.timestamps null: false
    end
    add_index :documents, :lesson_id
  end
end
