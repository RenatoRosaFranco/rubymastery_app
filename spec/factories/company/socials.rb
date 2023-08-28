# == Schema Information
#
# Table name: socials
#
#  id         :integer          not null, primary key
#  icon       :string
#  link       :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :social, class: Company::Social do
    icon { 'fa-brands fa-facebook' }
    name { 'Facebook' }
    link { 'https://facebook.com' }
  end
end
