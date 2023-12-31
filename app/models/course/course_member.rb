# == Schema Information
#
# Table name: course_members
#
#  id         :integer          not null, primary key
#  done       :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_course_members_on_course_id  (course_id)
#  index_course_members_on_user_id    (user_id)
#
# Foreign Keys
#
#  course_id  (course_id => courses.id)
#  user_id    (user_id => users.id)
#
module Course
  class CourseMember < ApplicationRecord
    # Properties
    self.table_name  = 'course_members'
    self.primary_key = 'id'

    # Relationships
    belongs_to :course, class_name: 'Course::Course'
    belongs_to :user,   class_name: 'User::User'

    # Validations
    validates_uniqueness_of :member, scope: [:course]
  end
end