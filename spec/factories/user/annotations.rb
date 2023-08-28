# == Schema Information
#
# Table name: annotations
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  course_id  :integer          not null
#  lesson_id  :integer          not null
#  section_id :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_annotations_on_course_id   (course_id)
#  index_annotations_on_lesson_id   (lesson_id)
#  index_annotations_on_section_id  (section_id)
#  index_annotations_on_user_id     (user_id)
#
# Foreign Keys
#
#  course_id   (course_id => courses.id)
#  lesson_id   (lesson_id => lessons.id)
#  section_id  (section_id => sections.id)
#  user_id     (user_id => users.id)
#
FactoryBot.define do
  factory :annotation, class: User::Annotation do
    body { FFaker::Lorem.paragraphs(rand(1..3)).join }
    course { association :course }
    section { association :section }
    lesson { association :lesson }
    
    association :user
  end
end
