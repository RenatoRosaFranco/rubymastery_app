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
module Course
  class Course < ApplicationRecord
    extend FriendlyId
    friendly_id :name, use: [:slugged]

    # Properties
    self.table_name  = 'courses'
    self.primary_key = 'id'

    # Uploader
    has_one_attached :cover

    # Relationships
    has_many :annotations,      class_name: 'User::Annotation'
    has_many :course_members,   class_name: 'Course::CourseMember'
    
    has_many :members, through: :course_members, source: :user
    
    has_many :modules, class_name: 'Course::Section'
    has_many :lessons, class_name: 'Course::Lesson'
    
    belongs_to :user,  class_name: 'User::User'
  end
end