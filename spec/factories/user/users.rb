# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  admin                  :boolean          default(FALSE)
#  discarded_at           :datetime
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
FactoryBot.define do
  factory :user, class: User::User do
    email { FFaker::Internet.email }
    password { '!Test123' }
    password_confirmation { '!Test123' }
    discarded_at { nil }
  end

  trait :admin do
    email { 'renato.franco@rubymastery.com' }
    admin { true }
  end

  trait :unvailable do
    discarded_at { Date.today }
  end

  after(:create) do |user, _evaluator|
    create(:address, user: user)
    create(:profile, user: user)
  end
end
