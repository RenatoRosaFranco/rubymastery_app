# frozen_string_literal: true

# == Schema Information
#
# Table name: course_teachers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :integer          not null
#  teacher_id :integer          not null
#
# Indexes
#
#  index_course_teachers_on_course_id   (course_id)
#  index_course_teachers_on_teacher_id  (teacher_id)
#
# Foreign Keys
#
#  course_id   (course_id => courses.id)
#  teacher_id  (teacher_id => teachers.id)
#
module Course
  class CourseTeacher < ApplicationRecord
    # Properties
    self.table_name  = 'course_teachers'
    self.primary_key = 'id'

    # Relationships
    belongs_to :course,  class_name: 'Course::Course'
    belongs_to :teacher, class_name: 'Course::Teacher'

    # Validations
    validates_uniqueness_of :teacher, scope: [:course]
  end
end
