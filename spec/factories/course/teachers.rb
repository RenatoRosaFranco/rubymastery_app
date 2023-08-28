# == Schema Information
#
# Table name: teachers
#
#  id         :integer          not null, primary key
#  avatar     :string
#  bio        :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'open-uri'

FactoryBot.define do
  factory :teacher, class: Course::Teacher do
    name { FFaker::Name.name }
    bio { FFaker::Lorem.paragraphs(rand(1..2)).join }
    
    after(:create) do |teacher, _evaluator|
      teacher.avatar.attach(
        io: open(FFaker::Image.url),
        filename: "#{SecureRandom.urlsafe_base64(8)}.jpeg",
        content_type: 'image/jpeg'
      )
    end
  end
end
