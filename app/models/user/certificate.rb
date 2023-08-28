# frozen_string_literal: true

# == Schema Information
#
# Table name: certificates
#
#  id              :integer          not null, primary key
#  completion_date :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  course_id       :integer          not null
#  user_id         :integer          not null
#
# Indexes
#
#  index_certificates_on_course_id  (course_id)
#  index_certificates_on_user_id    (user_id)
#
# Foreign Keys
#
#  course_id  (course_id => courses.id)
#  user_id    (user_id => users.id)
#
module User
  class Certificate < ApplicationRecord
    # Properties
    self.table_name  = 'certificates'
    self.primary_key = 'id'

    # Relationships
    belongs_to :course, class_name: 'Course::Course'
    belongs_to :user,   class_name: 'User::User'

    # Validations
    validates_uniqueness_of :course, scope: [:user]
  end
end
