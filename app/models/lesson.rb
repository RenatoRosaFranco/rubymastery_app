# == Schema Information
#
# Table name: lessons
#
#  id          :integer          not null, primary key
#  description :text
#  slug        :string
#  title       :string
#  video_path  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  course_id   :integer          not null
#  section_id  :integer          not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_lessons_on_course_id   (course_id)
#  index_lessons_on_section_id  (section_id)
#  index_lessons_on_user_id     (user_id)
#
# Foreign Keys
#
#  course_id   (course_id => courses.id)
#  section_id  (section_id => sections.id)
#  user_id     (user_id => users.id)
#
class Lesson < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:slugged]

  # Properties
  self.table_name  = 'lessons'
  self.primary_key = 'id'

  # Relationships
  belongs_to :section
  belongs_to :course
  belongs_to :user
end
