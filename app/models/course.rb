# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  cover      :string
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_courses_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Course < ApplicationRecord

  # Properties
  self.table_name  = 'courses'
  self.primary_key = 'id'

  # Relationships
  belongs_to :user
end
