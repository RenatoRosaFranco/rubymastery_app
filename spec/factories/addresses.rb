# == Schema Information
#
# Table name: addresses
#
#  id           :integer          not null, primary key
#  city         :string
#  complement   :string
#  neighborhood :string
#  number       :integer
#  state        :string
#  street       :string
#  zipcode      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :integer          not null
#
# Indexes
#
#  index_addresses_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
FactoryBot.define do
  factory :address do
    street { FFaker::Address.street_address }
    number { FFaker::Address.building_number }
    neighborhood { FFaker::Address.neighborhood }
    zipcode { FFaker::Address.zip_code }
    city { FFaker::Address.city }
    state { FFaker::Address.country_code }

    user

    trait :with_complement do
      complement { FFaker::Address.secondary_address }
    end
  end
end
