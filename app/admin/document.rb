ActiveAdmin.register Lesson
ActiveAdmin.register Document do
  belongs_to :lesson
  permit_params :lesson_id, :title, :description

  index do 
    selectable column
    id_column
    column :title
    column :description
  end

  filter :title

  form do |f|
    f.inputs "Información del archivo" do
      f.input :title
      f.input :description
      f.input :lesson, as: :hidden
    end
    f.actions
  end
end