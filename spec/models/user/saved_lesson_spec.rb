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
require 'rails_helper'

RSpec.describe User::SavedLesson, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
