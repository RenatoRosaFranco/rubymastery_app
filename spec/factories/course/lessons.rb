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
FactoryBot.define do
  factory :lesson, class: Course::Lesson do
    title { FFaker::Book.title }
    description { FFaker::Lorem.paragraphs(rand(2..4)).join }
    video_path { FFaker::Youtube.embed_url }
    section { association :section }
    course { association :course }
    user { association :user }
  end
end
