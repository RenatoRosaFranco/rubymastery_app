# frozen_string_literal: true

# == Schema Information
#
# Table name: partners
#
#  id         :integer          not null, primary key
#  email      :string
#  kind       :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :partner, class: Marketing::Partner do
    name { FFaker::Name.name }
    kind { Marketing::Partner.kinds.keys.sample }
    email { FFaker::Internet.email }
  end
end
