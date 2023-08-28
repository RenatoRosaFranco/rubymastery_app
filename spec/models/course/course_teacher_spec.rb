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
require 'rails_helper'

RSpec.describe Course::CourseTeacher, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
