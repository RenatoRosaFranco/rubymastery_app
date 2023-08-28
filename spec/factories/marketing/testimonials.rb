# frozen_string_literal: true

# == Schema Information
#
# Table name: testimonials
#
#  id         :integer          not null, primary key
#  body       :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :testimonial, class: Marketing::Testimonial do
    name { FFaker::Name.name }
    body { FFaker::Lorem.paragraphs(rand(1..2)).join }
  end
end
