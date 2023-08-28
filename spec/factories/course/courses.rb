# == Schema Information
#
# Table name: courses
#
#  id           :integer          not null, primary key
#  cover        :string
#  discarded_at :datetime
#  name         :string
#  slug         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer          not null
#
# Indexes
#
#  index_courses_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
FactoryBot.define do
  factory :course, class: Course::Course do
    name { 'Curso - Ruby on Rails' }
    user { association :user }

    after(:create) do |coursa, _evaluator|
      course.cover.attach(
        io: open(FFaker::Image.url),
        filename: "#{SecureRandom.urlsafe_base64(8)}.jpeg",
        content_type: 'image/jpeg'
      )
    end
  end
end
