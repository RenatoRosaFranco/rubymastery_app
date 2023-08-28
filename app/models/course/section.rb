# == Schema Information
#
# Table name: sections
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_sections_on_course_id  (course_id)
#  index_sections_on_user_id    (user_id)
#
# Foreign Keys
#
#  course_id  (course_id => courses.id)
#  user_id    (user_id => users.id)
#
module Course
  class Section < ApplicationRecord
    # Properties
    self.table_name  = 'sections'
    self.primary_key = 'id'

    # Relationships
    has_many :annotations, class_name: 'User::Annotation'
    has_many :lessons,     class_name: 'Course::Lesson'
    belongs_to :course,    class_name: 'Course::Course'
    belongs_to :user,      class_name: 'User::User'
  end
end