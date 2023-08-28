# == Schema Information
#
# Table name: lessons
#
#  id          :integer          not null, primary key
#  description :text
#  level       :integer
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
module Course
  class Lesson < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: [:slugged]

    # Properties
    self.table_name  = 'lessons'
    self.primary_key = 'id'

    # Enum
    enum level: ['beginner', 'intermediate', 'advanced']

    # Relationships
    has_many :annotations,   class_name: 'User::Annotation'
    has_many :saved_lessons, class_name: 'User::SavedLesson'
    belongs_to :section,     class_name: 'Course::Section'
    belongs_to :course,      class_name: 'Course::Course'
    belongs_to :user,        class_name: 'User::User'
  end
end
