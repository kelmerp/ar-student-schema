require_relative '../app/models/student'
require_relative '../app/models/teacher'
require_relative '../app/models/course'

module Associator
  def self.associate
    Student.all.each do |student|
      # student.update(teacher_id: Teacher.all.sample.id)
      teacher = Teacher.all.sample.id
      Course.create(student_id: student.id,
        teacher_id: teacher)
      student.update(teacher_id: teacher)
    end
  end
end
