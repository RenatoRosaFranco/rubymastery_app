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
  extend FriendlyId
  friendly_id :name, use: [:slugged]

  # Properties
  self.table_name  = 'courses'
  self.primary_key = 'id'

  # Relationships
  has_many :annotations
  has_many :course_members
  has_many :members, through: :course_members
  has_many :modules, class_name: 'Section'
  has_many :lessons
  
  belongs_to :user
end
