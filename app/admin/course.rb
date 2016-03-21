ActiveAdmin.register Course do
  permit_params :title, :description 

  index do
    selectable_column
    id_column
    column :title
    column :description
    actions
  end

  filter :title

  form do |f|
    f.inputs "Información del curso" do
      f.input :title
      f.input :description
    end
    f.actions
  end

  sidebar "Clases", only: [:show, :edit] do
    h4 "LIsta de clases"
    ul do
      course.lessons.each do |lesson|
        li link_to lesson.title,  admin_course_lesson_path(course,lesson)
      end
    end
    h4 "Acciones rápidas"
    ul do
      li link_to "Listar clases", admin_course_lessons_path(course) 
      li link_to "Agregar nueva clase", new_admin_course_lesson_path(course)
    end
  end

end