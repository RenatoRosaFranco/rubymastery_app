# == Schema Information
#
# Table name: sections
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_sections_on_course_id  (course_id)
#  index_sections_on_user_id    (user_id)
#
# Foreign Keys
#
#  course_id  (course_id => courses.id)
#  user_id    (user_id => users.id)
#
FactoryBot.define do
  factory :section, class: Course::Section do
    name { FFaker::Book.genre }
    course { association :course }
    user { association :user }
  end
end
