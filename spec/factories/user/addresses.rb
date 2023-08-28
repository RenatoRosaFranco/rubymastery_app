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
  factory :address, class: User::Address do
    street { FFaker::AddressUS.street_address }
    number { FFaker::AddressUS.building_number }
    neighborhood { FFaker::AddressUS.neighborhood }
    zipcode { FFaker::AddressUS.zip_code }
    city { FFaker::AddressUS.city }
    state { FFaker::AddressUS.country_code }
    user { association :user }

    trait :with_complement do
      complement { FFaker::AddressUS.secondary_address }
    end
  end
end
