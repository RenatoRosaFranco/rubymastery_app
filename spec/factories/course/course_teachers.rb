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
FactoryBot.define do
  factory :course_teacher, class: Course::CourseTeacher do
    course { association :course }
    teacher { association :teacher }
  end
end
