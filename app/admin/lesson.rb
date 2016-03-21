ActiveAdmin.register Course
ActiveAdmin.register Lesson do
  belongs_to :course
  permit_params :course_id, :title, :description

  index do
    selectable_column
    id_column
    column :title
    column :course
  end

  filter :title

  form do |f|
    f.inputs "Datos del curso" do
      f.input :title
      f.input :course, as:  :hidden
      f.input :description
    end
    f.actions
  end

  sidebar "Contenido de la clase", only: [:show] do
    h4 link_to "Vídeos", admin_lesson_videos_path(lesson)
    ul do
      lesson.videos.each do |video|
        li link_to video.title, admin_lesson_video_path(lesson, video)
      end
    end
    
    h4 link_to "Archivos", admin_lesson_documents_path(lesson)
    ul do
      lesson.documents.each do |document|
        li link_to document.title, admin_lesson_document_path(lesson, document)
      end
    end
  end
end