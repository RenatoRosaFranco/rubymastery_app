# == Schema Information
#
# Table name: profiles
#
#  id         :integer          not null, primary key
#  birthdate  :date
#  gender     :integer
#  name       :string
#  phone      :string
#  picture    :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require 'open-uri'

FactoryBot.define do
  factory :profile, class: User::Profile do
    name { FFaker::Name.name }
    phone { FFaker::PhoneNumber.phone_number }
    gender { User::Profile.genders.keys.sample }
    birthdate { "#{rand(28)}/#{12}/#{rand(1980..2010)}" }
    user { association :user }

    after(:create) do |user, _evaluator|
      user.picture.attach(
        io: open(FFaker::Image.url),
        filename: "#{SecureRandom.urlsafe_base64(8)}.jpeg",
        content_type: 'image/jpeg'
      )
    end
  end
end
