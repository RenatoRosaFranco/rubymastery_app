# == Schema Information
#
# Table name: newsletters
#
#  id         :integer          not null, primary key
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :marketing_newsletter, class: 'Marketing::Newsletter' do
    name { "MyString" }
  end
end
