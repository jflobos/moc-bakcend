ActiveAdmin.register Lesson
ActiveAdmin.register Video do
  belongs_to :lesson
  permit_params :lesson_id, :title, :description

  index do 
    selectable column
    id_column
    column :title
    column :description
    column :video_url
  end

  filter :title

  form do |f|
    f.inputs "Información del vídeo" do
      f.input :title
      f.input :description
      f.input :lesson, as: :hidden
      f.input :video_url
    end
    f.actions
  end
end