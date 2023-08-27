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
class CourseMember < ApplicationRecord

  # Relationships
  belongs_to :course
  belongs_to :user

  # Validations
  validates_uniqueness_of :member, scope: [:course]
end
