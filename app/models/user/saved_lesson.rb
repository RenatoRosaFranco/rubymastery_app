# frozen_string_literal: true

# == Schema Information
#
# Table name: saved_lessons
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  lesson_id  :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_saved_lessons_on_lesson_id  (lesson_id)
#  index_saved_lessons_on_user_id    (user_id)
#
# Foreign Keys
#
#  lesson_id  (lesson_id => lessons.id)
#  user_id    (user_id => users.id)
#
module User
  class SavedLesson < ApplicationRecord
    # Properties
    self.table_name  = 'saved_lessons'
    self.primary_key = 'id'

    # Relationships
    belongs_to :user,   class_name: 'User::User'
    belongs_to :lesson, class_name: 'Course::Lesson'

    # Validations
    validates_uniqueness_of :lesson, scope: [:user]
  end
end
