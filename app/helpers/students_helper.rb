module StudentsHelper

  def link_to_school_class_if_available(student_id)
    student = Student.find(student_id)
    school_class_available = !student.school_class.nil?
    if school_class_available
      link_to "#{student.school_class.level}#{student.school_class.indication}", school_class_path(student.school_class.id)
    else
      "No class"
    end
  end
end