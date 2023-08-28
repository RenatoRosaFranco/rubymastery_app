# == Schema Information
#
# Table name: certificates
#
#  id              :integer          not null, primary key
#  completion_date :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  course_id       :integer          not null
#  user_id         :integer          not null
#
# Indexes
#
#  index_certificates_on_course_id  (course_id)
#  index_certificates_on_user_id    (user_id)
#
# Foreign Keys
#
#  course_id  (course_id => courses.id)
#  user_id    (user_id => users.id)
#
FactoryBot.define do
  factory :certificate, class: User::Certificate do
    completion_date { "2023-08-27" }
    course { association :course }
    user { association :user }
  end
end
